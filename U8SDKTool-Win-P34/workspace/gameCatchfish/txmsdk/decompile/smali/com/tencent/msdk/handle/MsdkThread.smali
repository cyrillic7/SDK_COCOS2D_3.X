.class public Lcom/tencent/msdk/handle/MsdkThread;
.super Landroid/os/HandlerThread;
.source "MsdkThread.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# static fields
.field public static final getPermission:I = 0x0

.field public static final getPfKeyReq:I = 0x7

.field public static final getPfKeyReqWithWakeup:I = 0x8

.field public static final getQQFirstLoginPfKeyReq:I = 0x12

.field public static final getScheduling:I = 0x1

.field public static final login:I = 0x3

.field public static final qqA8Req:I = 0x9

.field public static final queryForeignNet:I = 0x28

.field public static final queryQQUserInfo:I = 0xd

.field public static final queryWXUserInfo:I = 0xf

.field public static final reportLogin:I = 0x2

.field public static final verifyLocalAndRefreshWxToken:I = 0x20

.field public static final verifyLocalQQToken:I = 0x1f

.field public static final wxExpiredLoginReq:I = 0x6

.field public static final wxFirstLoginReq:I = 0x5

.field public static final wxRefreshTokenLoginReq:I = 0x11


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 40
    invoke-direct {p0, p1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 41
    return-void
.end method

.method private reportLogin(Landroid/os/Bundle;)V
    .registers 5
    .param p1, "data"    # Landroid/os/Bundle;

    .prologue
    .line 64
    const-string v2, "openId"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 65
    .local v0, "openId":Ljava/lang/String;
    const-string v2, "platId"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 66
    .local v1, "platId":I
    invoke-static {}, Lcom/tencent/msdk/WeGame;->getInstance()Lcom/tencent/msdk/WeGame;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/msdk/WeGame;->getStat()Lcom/tencent/msdk/stat/Stat;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/tencent/msdk/stat/Stat;->reportLogin(Ljava/lang/String;I)Z

    .line 67
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .registers 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 46
    const-string v0, "MsdkThread"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " handleMessage CurrentThread = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_38

    .line 60
    :goto_25
    :pswitch_25
    const/4 v0, 0x1

    return v0

    .line 50
    :pswitch_27
    invoke-static {}, Lcom/tencent/msdk/permission/PermissionManage;->getInstance()Lcom/tencent/msdk/permission/PermissionManage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/msdk/permission/PermissionManage;->init()V

    goto :goto_25

    .line 53
    :pswitch_2f
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tencent/msdk/handle/MsdkThread;->reportLogin(Landroid/os/Bundle;)V

    goto :goto_25

    .line 47
    nop

    :pswitch_data_38
    .packed-switch 0x0
        :pswitch_27
        :pswitch_25
        :pswitch_2f
    .end packed-switch
.end method
