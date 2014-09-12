#encoding: UTF-8

require_relative "jruby_zemberek/java/zemberek/zemberek-cekirdek-2.1.1.jar"
java_import "net.zemberek.erisim.Zemberek"
java_import "net.zemberek.araclar.turkce.YaziIsleyici"

require_relative "jruby_zemberek/java/zemberek/zemberek-tr-2.1.1.jar"
java_import "net.zemberek.tr.yapi.TurkiyeTurkcesi"

class JrubyZemberek
  def initialize
    @z= Zemberek.new(TurkiyeTurkcesi.new)
  end

  def kelime_cozumle(kelime)
    @z.kelime_cozumle(kelime).map do |cozum|
      kok= cozum.kok
      { kok: kok.icerik, kok_tip: kok.tip.name, ekler: cozum.ekler.map(&:ad) }
    end
  end

  def metin_cozumle(metin)
    YaziIsleyici.analiz_dizisi_olustur(metin).
      reject do |kelime|
        kelime.icerik.strip.empty?
      end.map do |kelime|
        kelime= kelime.icerik
        cozumlendi= @z.kelime_denetle kelime
        sonuc= { kelime: kelime, cozumlendi: cozumlendi }
        if cozumlendi
          sonuc[:cozumler]= kelime_cozumle(kelime)
          sonuc[:oneriler]= []
        else
          sonuc[:oneriler]= @z.oner(kelime).map do |oneri|
            { cozumler: kelime_cozumle(oneri) }
          end
          sonuc[:cozumler]= []
        end
        sonuc
      end
  end
end

