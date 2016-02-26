.class Lcom/tencent/msdk/myapp/whitelist/WhiteListMng$2;
.super Ljava/lang/Object;
.source "WhiteListMng.java"

# interfaces
.implements Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/ITMAssistantAuthorizedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/msdk/myapp/whitelist/WhiteListMng;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/msdk/myapp/whitelist/WhiteListMng;


# direct methods
.method constructor <init>(Lcom/tencent/msdk/myapp/whitelist/WhiteListMng;)V
    .registers 2

    .prologue
    .line 37
    iput-object p1, p0, Lcom/tencent/msdk/myapp/whitelist/WhiteListMng$2;->this$0:Lcom/tencent/msdk/myapp/whitelist/WhiteListMng;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAuthorizedFinished(ZLcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/TMAssistantAuthorizedInfo;)V
    .registers 7
    .param p1, "isAuthorizeSucceed"    # Z
    .param p2, "authorizedInfo"    # Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/TMAssistantAuthorizedInfo;

    .prologue
    const/4 v2, 0x0

    .line 41
    const-string v1, "onAuthorizedFinished"

    invoke-static {v1}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 42
    if-eqz p1, :cond_8a

    .line 44
    iget-object v1, p0, Lcom/tencent/msdk/myapp/whitelist/WhiteListMng$2;->this$0:Lcom/tencent/msdk/myapp/whitelist/WhiteListMng;

    invoke-virtual {v1}, Lcom/tencent/msdk/myapp/whitelist/WhiteListMng;->getTmpQQLoginInfo()Lcom/tencent/msdk/db/QQLoginModel;

    move-result-object v1

    if-eqz v1, :cond_2d

    .line 45
    iget-object v1, p0, Lcom/tencent/msdk/myapp/whitelist/WhiteListMng$2;->this$0:Lcom/tencent/msdk/myapp/whitelist/WhiteListMng;

    invoke-virtual {v1}, Lcom/tencent/msdk/myapp/whitelist/WhiteListMng;->getTmpQQLoginInfo()Lcom/tencent/msdk/db/QQLoginModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/msdk/db/QQLoginModel;->save()Z

    .line 46
    iget-object v1, p0, Lcom/tencent/msdk/myapp/whitelist/WhiteListMng$2;->this$0:Lcom/tencent/msdk/myapp/whitelist/WhiteListMng;

    invoke-virtual {v1, v2}, Lcom/tencent/msdk/myapp/whitelist/WhiteListMng;->setTmpQQLoginInfo(Lcom/tencent/msdk/db/QQLoginModel;)V

    .line 47
    new-instance v0, Lcom/tencent/msdk/api/LoginRet;

    invoke-direct {v0}, Lcom/tencent/msdk/api/LoginRet;-><init>()V

    .line 48
    .local v0, "loginRet":Lcom/tencent/msdk/api/LoginRet;
    invoke-static {v0}, Lcom/tencent/msdk/login/LoginUtils;->getLocalLoginRet(Lcom/tencent/msdk/api/LoginRet;)I

    .line 49
    invoke-static {}, Lcom/tencent/msdk/WeGameNotifyGame;->getInstance()Lcom/tencent/msdk/WeGameNotifyGame;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tencent/msdk/WeGameNotifyGame;->OnPlatformLoginNotify(Lcom/tencent/msdk/api/LoginRet;)V

    .line 51
    .end local v0    # "loginRet":Lcom/tencent/msdk/api/LoginRet;
    :cond_2d
    iget-object v1, p0, Lcom/tencent/msdk/myapp/whitelist/WhiteListMng$2;->this$0:Lcom/tencent/msdk/myapp/whitelist/WhiteListMng;

    invoke-virtual {v1}, Lcom/tencent/msdk/myapp/whitelist/WhiteListMng;->getTmpWXLoginInfo()Lcom/tencent/msdk/request/WxResponse;

    move-result-object v1

    if-eqz v1, :cond_52

    .line 53
    iget-object v1, p0, Lcom/tencent/msdk/myapp/whitelist/WhiteListMng$2;->this$0:Lcom/tencent/msdk/myapp/whitelist/WhiteListMng;

    invoke-virtual {v1}, Lcom/tencent/msdk/myapp/whitelist/WhiteListMng;->getTmpWXLoginInfo()Lcom/tencent/msdk/request/WxResponse;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/msdk/request/WxRequestMng;->updateWxInfo(Lcom/tencent/msdk/request/WxResponse;)Z

    .line 54
    iget-object v1, p0, Lcom/tencent/msdk/myapp/whitelist/WhiteListMng$2;->this$0:Lcom/tencent/msdk/myapp/whitelist/WhiteListMng;

    invoke-virtual {v1, v2}, Lcom/tencent/msdk/myapp/whitelist/WhiteListMng;->setTmpWXLoginInfo(Lcom/tencent/msdk/request/WxResponse;)V

    .line 55
    new-instance v0, Lcom/tencent/msdk/api/LoginRet;

    invoke-direct {v0}, Lcom/tencent/msdk/api/LoginRet;-><init>()V

    .line 56
    .restart local v0    # "loginRet":Lcom/tencent/msdk/api/LoginRet;
    invoke-static {v0}, Lcom/tencent/msdk/login/LoginUtils;->getLocalLoginRet(Lcom/tencent/msdk/api/LoginRet;)I

    .line 57
    invoke-static {}, Lcom/tencent/msdk/WeGameNotifyGame;->getInstance()Lcom/tencent/msdk/WeGameNotifyGame;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tencent/msdk/WeGameNotifyGame;->OnPlatformLoginNotify(Lcom/tencent/msdk/api/LoginRet;)V

    .line 60
    .end local v0    # "loginRet":Lcom/tencent/msdk/api/LoginRet;
    :cond_52
    invoke-static {}, Lcom/tencent/msdk/WeGame;->getInstance()Lcom/tencent/msdk/WeGame;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/msdk/WeGame;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "\u6388\u6743\u6210\u529f!"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 82
    :goto_64
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " isAuthorizeSucceed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  authorizedInfo:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 84
    iget-object v1, p0, Lcom/tencent/msdk/myapp/whitelist/WhiteListMng$2;->this$0:Lcom/tencent/msdk/myapp/whitelist/WhiteListMng;

    invoke-virtual {v1}, Lcom/tencent/msdk/myapp/whitelist/WhiteListMng;->onDestory()V

    .line 85
    :cond_89
    return-void

    .line 64
    :cond_8a
    invoke-static {}, Lcom/tencent/msdk/WeGame;->getInstance()Lcom/tencent/msdk/WeGame;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/msdk/WeGame;->logout()Z

    .line 65
    new-instance v0, Lcom/tencent/msdk/api/LoginRet;

    invoke-direct {v0}, Lcom/tencent/msdk/api/LoginRet;-><init>()V

    .line 66
    .restart local v0    # "loginRet":Lcom/tencent/msdk/api/LoginRet;
    const/4 v1, -0x3

    iput v1, v0, Lcom/tencent/msdk/api/LoginRet;->flag:I

    .line 67
    iget-object v1, p2, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/TMAssistantAuthorizedInfo;->userId:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/msdk/api/LoginRet;->open_id:Ljava/lang/String;

    .line 68
    iget-object v1, p0, Lcom/tencent/msdk/myapp/whitelist/WhiteListMng$2;->this$0:Lcom/tencent/msdk/myapp/whitelist/WhiteListMng;

    # getter for: Lcom/tencent/msdk/myapp/whitelist/WhiteListMng;->mQQAppId:Ljava/lang/String;
    invoke-static {v1}, Lcom/tencent/msdk/myapp/whitelist/WhiteListMng;->access$000(Lcom/tencent/msdk/myapp/whitelist/WhiteListMng;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p2, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/TMAssistantAuthorizedInfo;->appId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_df

    .line 69
    sget v1, Lcom/tencent/msdk/WeGame;->QQPLATID:I

    iput v1, v0, Lcom/tencent/msdk/api/LoginRet;->platform:I

    .line 70
    const-string v1, "qq user not in white list"

    iput-object v1, v0, Lcom/tencent/msdk/api/LoginRet;->desc:Ljava/lang/String;

    .line 78
    :goto_b3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyLogin flag = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/tencent/msdk/api/LoginRet;->flag:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " desc = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/tencent/msdk/api/LoginRet;->desc:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 80
    invoke-static {}, Lcom/tencent/msdk/WeGameNotifyGame;->getInstance()Lcom/tencent/msdk/WeGameNotifyGame;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tencent/msdk/WeGameNotifyGame;->OnPlatformLoginNotify(Lcom/tencent/msdk/api/LoginRet;)V

    goto :goto_64

    .line 71
    :cond_df
    iget-object v1, p0, Lcom/tencent/msdk/myapp/whitelist/WhiteListMng$2;->this$0:Lcom/tencent/msdk/myapp/whitelist/WhiteListMng;

    # getter for: Lcom/tencent/msdk/myapp/whitelist/WhiteListMng;->mWxAppId:Ljava/lang/String;
    invoke-static {v1}, Lcom/tencent/msdk/myapp/whitelist/WhiteListMng;->access$100(Lcom/tencent/msdk/myapp/whitelist/WhiteListMng;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p2, Lcom/tencent/tmassistantsdk/internal/openSDK/opensdktomsdk/TMAssistantAuthorizedInfo;->appId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_89

    .line 72
    sget v1, Lcom/tencent/msdk/WeGame;->WXPLATID:I

    iput v1, v0, Lcom/tencent/msdk/api/LoginRet;->platform:I

    .line 73
    const-string v1, "wx user not in white list"

    iput-object v1, v0, Lcom/tencent/msdk/api/LoginRet;->desc:Ljava/lang/String;

    goto :goto_b3
.end method
