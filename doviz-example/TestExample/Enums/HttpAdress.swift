//
//  HttpAdress.swift
//  CineDB
//
//  Created by Baran Karaoğuz on 28.08.2018.
//  Copyright © 2018 CodingMind. All rights reserved.
//

import Foundation

struct HttpAddress{
    
    static let imageURL : String                        = "http://static.cinedb.com.tr"
    
    //Mark: -> For Service
    static let globalServiceLink : String               = "http://service.cinedb.com.tr/CineBulService.asmx?op="
    static let cineDBGlobalServiceLink : String         = "http://service.cinedb.com.tr/CineDbService.asmx?op="
    static let addServiceLink : String                  = "AddUser"
    static let answerServiceLink : String               = "Answer"
    static let getQuestionServiceLink : String          = "GetQuestion"
    static let postLastLoginServiceLink : String        = "PostLastLogin"
    static let loginServiceLink : String                = "Login"
    static let getAboutServiceLink : String             = "GetContentPage"
    static let forgotPasswordServiceLink : String       = "forgotPassword"
    static let changePasswordServiceLink : String       = "ChangePassword"
    static let visitorQuestionServiceLink : String      = "QuestionForVisitor"
    static let getMemberIDServiceLink : String          = "getbyMemberId"
    static let getMonthlyRankServiceLink : String       = "GETMonthRank"
    static let getWeeklyRankServiceLink : String        = "GETweeklyRank"
    static let postMemberUpdateServiceLink : String     = "PostMemberUpdate"
    static let notificationOfErrorServiceLink : String  = "NotificationOfError"
    static let postQuestionSuggestServiceLink : String  = "PostQuestionsuggest"
    static let postImageServiceLink : String            = "PostImage"
    static let getGiftsTableLink : String               = "GetGiftList"
    static let getWinnerServiceLink : String            = "GetGiftMemberList"
    static let getOnboardingServiceLink : String        = "GetOnBoarding"
    static let updateProcessServiceLink : String        = "updateProcessService"
    static let OneSignalIDServiceLink : String          = "OneSingal"
    static let lightBoxServiceLink : String             = "LightBox"
    static let top100ServiceLink : String               = "Top100Service"
    static let videoDetailServiceLink : String          = "GetByVideo"
    static let allVideoServiceLink : String             = "VideoList"
    static let getFragmanServiceLink : String           = "GetByFragman"
    static let getExamServiceLink : String              = "GetByExam"
    static let getExamResultServiceLink : String        = "ExamResultt"
    static let getExamCategoryServiceLink : String      = "ExamCategory"
    static let allNewsServiceLink : String              = "NewsListService"
    static let allTopListServiceLink : String           = "topListService"
    static let videoCategoryServiceLink : String        = "VideoCategoryService"
    static let SeansServiceLink : String                = "Seans"
    static let SeansDetailServiceLink : String          = "SeansDetail"
    static let AllActorsServiceLink : String            = "AllPlayerService"
    static let contentPageLink : String                 = "ContentPageService"
    static let contentListService : String              = "ContentListService"
    static let festivalListService : String             = "FestivalList"
    
    
    static let homePageService : String                 = "homePageDataService"
    static let getByMovieService : String               = "GetByMovieService"
    static let getByActorsService : String              = "GetByPlayerService"
    static let getByAllMovieService : String            = "AllMovieService"
    static let getByNewsDetailService : String          = "NewsDetailService"
    static let getByWeeklyXService : String             = "WeeklyXService"
    static let findContentService : String              = "FindContentService"
    static let findFestivalService : String             = "FestivalFind"
    static let sendVideoComment : String                = "AddVideoComment"
    static let addLikeCommentService : String           = "AddLikeCommentVote"
    static let updateCommentService : String            = "UpdateCommentVote"
    static let getBiletiniAlToken : String              = "GetBiletiniAlToken"
    static let getSeansListService : String             = "GetSeansList"
    static let getByProfileXService : String            = "getProfileService"
    static let getByWillWatchAndFavoriteService : String = "willWatchAndFavoriteMovieService"
    static let getByFollowerAndFollowedService : String = "myFollowerService"
    static let getMyCommentService : String             = "myCommentService"
    static let getDeleteWillWatchAndFavoriteService : String = "deleteWillWatchAndFavoriteMovieService"
    static let getDeleteMyCommentService : String       = "deleteMyCommentService"
    static let postFavoriteAndWillWatchService : String = "PostFavoriteService"
    static let galleryDetailService : String            = "GetGalleryDetailService"
    static let memberWallService : String               = "MemberWall"
    static let sendCommentService : String              = "PostCommentService"
    static let topListDetailService : String            = "TopListDetailService"
    static let postFollowingService : String            = "FollowingService"
    static let searchService : String                   = "Search"
    static let postVoteService : String                 = "PostVote"
    
    //CineMaximum Api Links
    static let cineDBCMServiceLink : String             = "http://service.cinedb.com.tr/cinemaximumservice.asmx?op="
    static let getCmToken : String                      = "GetToken"
    static let siteGroupsByFilmId : String              = "SiteGroupsByFilmId"
    
    
    
}
