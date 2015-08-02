module WilsonCmsJobOffers

  class JobOfferFilter < WilsonCms::Filter
    attr_accessor :query

    def scopes
      scopes = []
      scopes << [:with_name, query] if query.present?
      return scopes
    end

    def self.to_key
      ["job_offer_filter"]
    end

  end

end
