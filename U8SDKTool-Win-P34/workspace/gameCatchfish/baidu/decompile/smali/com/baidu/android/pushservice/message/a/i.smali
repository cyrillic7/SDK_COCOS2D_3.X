.class public final Lcom/baidu/android/pushservice/message/a/i;
.super Ljava/lang/Object;


# direct methods
.method public static a(Ljava/lang/String;Ljava/lang/String;[B)Lcom/baidu/android/pushservice/message/PublicMsg;
    .registers 10

    const/4 v1, 0x1

    new-instance v0, Lcom/baidu/android/pushservice/message/PublicMsg;

    invoke-direct {v0}, Lcom/baidu/android/pushservice/message/PublicMsg;-><init>()V

    iput-object p0, v0, Lcom/baidu/android/pushservice/message/PublicMsg;->mMsgId:Ljava/lang/String;

    iput-object p1, v0, Lcom/baidu/android/pushservice/message/PublicMsg;->mAppId:Ljava/lang/String;

    :try_start_a
    new-instance v2, Lorg/json/JSONObject;

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, p2}, Ljava/lang/String;-><init>([B)V

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v3, "title"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_24

    const-string v3, "title"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/baidu/android/pushservice/message/PublicMsg;->mTitle:Ljava/lang/String;

    :cond_24
    const-string v3, "description"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_34

    const-string v3, "description"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/baidu/android/pushservice/message/PublicMsg;->mDescription:Ljava/lang/String;

    :cond_34
    const-string v3, "url"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_44

    const-string v3, "url"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/baidu/android/pushservice/message/PublicMsg;->mUrl:Ljava/lang/String;

    :cond_44
    const-string v3, "notification_builder_id"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_54

    const-string v3, "notification_builder_id"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v0, Lcom/baidu/android/pushservice/message/PublicMsg;->mNotificationBuilder:I

    :cond_54
    const-string v3, "open_type"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_64

    const-string v3, "open_type"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v0, Lcom/baidu/android/pushservice/message/PublicMsg;->mOpenType:I

    :cond_64
    const-string v3, "notification_basic_style"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_74

    const-string v3, "notification_basic_style"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v0, Lcom/baidu/android/pushservice/message/PublicMsg;->mNotificationBasicStyle:I

    :cond_74
    const-string v3, "custom_content"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_9c

    const-string v3, "custom_content"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "PublicMsgBuilder"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "custom_content="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/baidu/frontia/a/b/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v3, v0, Lcom/baidu/android/pushservice/message/PublicMsg;->mCustomContent:Ljava/lang/String;

    :cond_9c
    const-string v3, "net_support"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_ac

    const-string v3, "net_support"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v0, Lcom/baidu/android/pushservice/message/PublicMsg;->mNetType:I

    :cond_ac
    const-string v3, "app_situation"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_cc

    const-string v3, "app_situation"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "as_is_support"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    if-ne v4, v1, :cond_14d

    :goto_c2
    iput-boolean v1, v0, Lcom/baidu/android/pushservice/message/PublicMsg;->mIsSupportApp:Z

    const-string v1, "as_pkg_name"

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/baidu/android/pushservice/message/PublicMsg;->mSupportAppname:Ljava/lang/String;

    :cond_cc
    const-string v1, "pkg_name"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_dc

    const-string v1, "pkg_name"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/baidu/android/pushservice/message/PublicMsg;->mPkgName:Ljava/lang/String;

    :cond_dc
    const-string v1, "pkg_vercode"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_ec

    const-string v1, "pkg_vercode"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/baidu/android/pushservice/message/PublicMsg;->mPkgVercode:I

    :cond_ec
    const-string v1, "pkg_content"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_fc

    const-string v1, "pkg_content"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/baidu/android/pushservice/message/PublicMsg;->mPkgContent:Ljava/lang/String;

    :cond_fc
    const-string v1, "advertise_style"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/baidu/android/pushservice/message/PublicMsg;->mAdvertiseStyle:I

    const-string v1, "smallicon_url"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/baidu/android/pushservice/message/PublicMsg;->mAdvertiseSmallIconUrl:Ljava/lang/String;

    const-string v1, "largeicon_url"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/baidu/android/pushservice/message/PublicMsg;->mAdvertiseLargeIconUrl:Ljava/lang/String;

    const-string v1, "click_url"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/baidu/android/pushservice/message/PublicMsg;->mAdvertiseClickUrl:Ljava/lang/String;

    const-string v1, "pictureclick_url"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/baidu/android/pushservice/message/PublicMsg;->mAdvertiseBigPictureClickUrl:Ljava/lang/String;

    const-string v1, "bigpicture_url"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/baidu/android/pushservice/message/PublicMsg;->mAdvertiseBigPictureUrl:Ljava/lang/String;

    const-string v1, "download_click_url"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/baidu/android/pushservice/message/PublicMsg;->mAdvertiseDownloadClickUrl:Ljava/lang/String;

    const-string v1, "detail_click_url"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/baidu/android/pushservice/message/PublicMsg;->mAdvertiseDetailClickUrl:Ljava/lang/String;

    const-string v1, "bigstyle_title"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/baidu/android/pushservice/message/PublicMsg;->mAdvertiseBigPictureTitle:Ljava/lang/String;

    const-string v1, "bigstyle_content"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/baidu/android/pushservice/message/PublicMsg;->mAdvertiseBigPictureContent:Ljava/lang/String;
    :try_end_14c
    .catch Lorg/json/JSONException; {:try_start_a .. :try_end_14c} :catch_150

    :goto_14c
    return-object v0

    :cond_14d
    const/4 v1, 0x0

    goto/16 :goto_c2

    :catch_150
    move-exception v0

    invoke-static {}, Lcom/baidu/android/pushservice/a;->b()Z

    move-result v1

    if-eqz v1, :cond_173

    const-string v1, "PublicMsgBuilder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Public Message Parsing Fail:\r\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/baidu/frontia/a/b/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_173
    const/4 v0, 0x0

    goto :goto_14c
.end method
