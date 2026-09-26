local gtlp_eventFrame = CreateFrame("Frame")
gtlp_eventFrame:RegisterEvent("GUILD_NEWS_UPDATE")

gtlp_eventFrame:SetScript("OnEvent", function(self, event, ...)
	if event == "GUILD_NEWS_UPDATE" then
		if CanEditMOTD() then -- Don't bother checking the news if you can't mark things as sticky.
			local numNews = GetNumGuildNews();
			if numNews then
				local NEWS_LEGENDARY_LOOTED = 8;
				for i = 1, numNews do
					local newsInfo = C_GuildInfo.GetGuildNewsInfo(i);
				if newsInfo and newsInfo.newsType == NEWS_LEGENDARY_LOOTED then
					if not newsInfo.isSticky then
						GuildNewsSetSticky(i, 1)
					end
				end
				end
			end
		end
	end
end);