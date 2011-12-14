class Tweet
  def initialize(hash)
    @from_hash = hash
  end

  def name
    self.from_user_name
  end
  
  def url
    "http://twitter.com/#{from_user}/status/#{id}"
  end
  
  def method_missing(meth, *args, &blk)
    if args.length == 0 && !block_given? && @from_hash.keys.include?(meth.to_s)
      @from_hash[meth.to_s]
    else
      super(meth, args, &blk)
    end
  end
  
  def respond_to?(meth)
    if @from_hash.keys.include?(meth.to_s)
      return true
    else
      super(meth)
    end
  end
end
