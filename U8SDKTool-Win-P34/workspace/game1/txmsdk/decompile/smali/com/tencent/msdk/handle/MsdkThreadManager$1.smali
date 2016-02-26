.class Lcom/tencent/msdk/handle/MsdkThreadManager$1;
.super Ljava/lang/Object;
.source "MsdkThreadManager.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/msdk/handle/MsdkThreadManager;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/msdk/handle/MsdkThreadManager;


# direct methods
.method constructor <init>(Lcom/tencent/msdk/handle/MsdkThreadManager;)V
    .registers 2

    .prologue
    .line 46
    iput-object p1, p0, Lcom/tencent/msdk/handle/MsdkThreadManager$1;->this$0:Lcom/tencent/msdk/handle/MsdkThreadManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .registers 12
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v9, 0x0

    .line 49
    iget v5, p1, Landroid/os/Message;->what:I

    sparse-switch v5, :sswitch_data_cc

    .line 121
    const-string v5, "invalid message"

    invoke-static {v5}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 123
    :cond_b
    :goto_b
    return v9

    .line 51
    :sswitch_c
    invoke-static {}, Lcom/tencent/msdk/WeGame;->getInstance()Lcom/tencent/msdk/WeGame;

    move-result-object v5

    iget v6, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v5, v6}, Lcom/tencent/msdk/WeGame;->login(I)V

    goto :goto_b

    .line 54
    :sswitch_16
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lcom/tencent/msdk/login/WxFirstLoginInfo;

    .line 55
    .local v4, "wxInfo":Lcom/tencent/msdk/login/WxFirstLoginInfo;
    if-eqz v4, :cond_b

    .line 56
    new-instance v5, Lcom/tencent/msdk/request/WxRequestMng;

    invoke-direct {v5}, Lcom/tencent/msdk/request/WxRequestMng;-><init>()V

    iget-object v6, v4, Lcom/tencent/msdk/login/WxFirstLoginInfo;->wxCode:Ljava/lang/String;

    iget v7, v4, Lcom/tencent/msdk/login/WxFirstLoginInfo;->notifyState:I

    invoke-virtual {v5, v6, v7}, Lcom/tencent/msdk/request/WxRequestMng;->wxFirstLoginReq(Ljava/lang/String;I)V

    goto :goto_b

    .line 61
    .end local v4    # "wxInfo":Lcom/tencent/msdk/login/WxFirstLoginInfo;
    :sswitch_29
    const/4 v1, 0x0

    .line 62
    .local v1, "isTimerRefresh":Z
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v5, :cond_36

    .line 63
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 65
    :cond_36
    new-instance v5, Lcom/tencent/msdk/request/WxRequestMng;

    invoke-direct {v5}, Lcom/tencent/msdk/request/WxRequestMng;-><init>()V

    iget v6, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v5, v6, v1}, Lcom/tencent/msdk/request/WxRequestMng;->wxExpiredLoginReq(IZ)V

    goto :goto_b

    .line 68
    .end local v1    # "isTimerRefresh":Z
    :sswitch_41
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/tencent/msdk/db/QQLoginModel;

    .line 69
    .local v2, "qlm":Lcom/tencent/msdk/db/QQLoginModel;
    if-eqz v2, :cond_50

    .line 70
    new-instance v5, Lcom/tencent/msdk/request/PfKeyRequestMng;

    invoke-direct {v5}, Lcom/tencent/msdk/request/PfKeyRequestMng;-><init>()V

    invoke-virtual {v5, v2}, Lcom/tencent/msdk/request/PfKeyRequestMng;->getQQFirstLoginPfKeyReq(Lcom/tencent/msdk/db/QQLoginModel;)V

    goto :goto_b

    .line 72
    :cond_50
    invoke-static {}, Lcom/tencent/msdk/login/LoginManager;->getInstance()Lcom/tencent/msdk/login/LoginManager;

    move-result-object v5

    invoke-virtual {v5, v9}, Lcom/tencent/msdk/login/LoginManager;->setIsCheckingToken(Z)V

    goto :goto_b

    .line 77
    .end local v2    # "qlm":Lcom/tencent/msdk/db/QQLoginModel;
    :sswitch_58
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/tencent/msdk/db/QQLoginModel;

    .line 78
    .restart local v2    # "qlm":Lcom/tencent/msdk/db/QQLoginModel;
    if-eqz v2, :cond_67

    .line 79
    new-instance v5, Lcom/tencent/msdk/request/PfKeyRequestMng;

    invoke-direct {v5}, Lcom/tencent/msdk/request/PfKeyRequestMng;-><init>()V

    invoke-virtual {v5, v2}, Lcom/tencent/msdk/request/PfKeyRequestMng;->verifyLocalQQToken(Lcom/tencent/msdk/db/QQLoginModel;)V

    goto :goto_b

    .line 81
    :cond_67
    invoke-static {}, Lcom/tencent/msdk/login/LoginManager;->getInstance()Lcom/tencent/msdk/login/LoginManager;

    move-result-object v5

    invoke-virtual {v5, v9}, Lcom/tencent/msdk/login/LoginManager;->setIsCheckingToken(Z)V

    goto :goto_b

    .line 86
    .end local v2    # "qlm":Lcom/tencent/msdk/db/QQLoginModel;
    :sswitch_6f
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/tencent/msdk/db/WxLoginModel;

    .line 87
    .local v2, "qlm":Lcom/tencent/msdk/db/WxLoginModel;
    if-eqz v2, :cond_80

    .line 88
    new-instance v5, Lcom/tencent/msdk/request/WxRequestMng;

    invoke-direct {v5}, Lcom/tencent/msdk/request/WxRequestMng;-><init>()V

    iget v6, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v5, v2, v6}, Lcom/tencent/msdk/request/WxRequestMng;->verifyLocalAndRefreshWxToken(Lcom/tencent/msdk/db/WxLoginModel;I)V

    goto :goto_b

    .line 90
    :cond_80
    invoke-static {}, Lcom/tencent/msdk/login/LoginManager;->getInstance()Lcom/tencent/msdk/login/LoginManager;

    move-result-object v5

    invoke-virtual {v5, v9}, Lcom/tencent/msdk/login/LoginManager;->setIsCheckingToken(Z)V

    goto :goto_b

    .line 95
    .end local v2    # "qlm":Lcom/tencent/msdk/db/WxLoginModel;
    :sswitch_88
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/tencent/msdk/api/WakeupRet;

    .line 96
    .local v3, "wakeup":Lcom/tencent/msdk/api/WakeupRet;
    if-eqz v3, :cond_9a

    .line 97
    new-instance v5, Lcom/tencent/msdk/request/PfKeyRequestMng;

    invoke-direct {v5}, Lcom/tencent/msdk/request/PfKeyRequestMng;-><init>()V

    iget v6, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v5, v6, v3}, Lcom/tencent/msdk/request/PfKeyRequestMng;->getPfKeyWithWakeup(ILcom/tencent/msdk/api/WakeupRet;)V

    goto/16 :goto_b

    .line 99
    :cond_9a
    invoke-static {}, Lcom/tencent/msdk/login/LoginManager;->getInstance()Lcom/tencent/msdk/login/LoginManager;

    move-result-object v5

    invoke-virtual {v5, v9}, Lcom/tencent/msdk/login/LoginManager;->setIsCheckingToken(Z)V

    goto/16 :goto_b

    .line 103
    .end local v3    # "wakeup":Lcom/tencent/msdk/api/WakeupRet;
    :sswitch_a3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/tencent/msdk/handle/MsdkThreadManager$QQA8Info;

    .line 104
    .local v0, "a8Info":Lcom/tencent/msdk/handle/MsdkThreadManager$QQA8Info;
    if-eqz v0, :cond_b9

    .line 108
    new-instance v5, Lcom/tencent/msdk/request/QQA8RequestMng;

    invoke-direct {v5}, Lcom/tencent/msdk/request/QQA8RequestMng;-><init>()V

    iget-object v6, v0, Lcom/tencent/msdk/handle/MsdkThreadManager$QQA8Info;->openAuthData:Ljava/lang/String;

    iget-object v7, v0, Lcom/tencent/msdk/handle/MsdkThreadManager$QQA8Info;->openAuthSt:Ljava/lang/String;

    iget v8, v0, Lcom/tencent/msdk/handle/MsdkThreadManager$QQA8Info;->notifyState:I

    invoke-virtual {v5, v6, v7, v8}, Lcom/tencent/msdk/request/QQA8RequestMng;->qqA8Req(Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_b

    .line 111
    :cond_b9
    invoke-static {}, Lcom/tencent/msdk/login/LoginManager;->getInstance()Lcom/tencent/msdk/login/LoginManager;

    move-result-object v5

    invoke-virtual {v5, v9}, Lcom/tencent/msdk/login/LoginManager;->setIsCheckingToken(Z)V

    goto/16 :goto_b

    .line 115
    .end local v0    # "a8Info":Lcom/tencent/msdk/handle/MsdkThreadManager$QQA8Info;
    :sswitch_c2
    invoke-static {}, Lcom/tencent/msdk/remote/api/RemoteApiWrapper;->WGQueryQQUserInfo()Z

    goto/16 :goto_b

    .line 118
    :sswitch_c7
    invoke-static {}, Lcom/tencent/msdk/remote/api/RemoteApiWrapper;->WGQueryWXUserInfo()Z

    goto/16 :goto_b

    .line 49
    :sswitch_data_cc
    .sparse-switch
        0x3 -> :sswitch_c
        0x5 -> :sswitch_16
        0x6 -> :sswitch_29
        0x8 -> :sswitch_88
        0x9 -> :sswitch_a3
        0xd -> :sswitch_c2
        0xf -> :sswitch_c7
        0x12 -> :sswitch_41
        0x1f -> :sswitch_58
        0x20 -> :sswitch_6f
    .end sparse-switch
.end method
