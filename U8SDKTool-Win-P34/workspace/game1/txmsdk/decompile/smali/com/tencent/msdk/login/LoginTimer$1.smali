.class Lcom/tencent/msdk/login/LoginTimer$1;
.super Ljava/lang/Object;
.source "LoginTimer.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/msdk/login/LoginTimer;->initTimer(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/msdk/login/LoginTimer;


# direct methods
.method constructor <init>(Lcom/tencent/msdk/login/LoginTimer;)V
    .registers 2

    .prologue
    .line 53
    iput-object p1, p0, Lcom/tencent/msdk/login/LoginTimer$1;->this$0:Lcom/tencent/msdk/login/LoginTimer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .registers 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 56
    iget v1, p1, Landroid/os/Message;->what:I

    if-ne v1, v5, :cond_53

    .line 57
    new-instance v0, Lcom/tencent/msdk/api/LoginRet;

    invoke-direct {v0}, Lcom/tencent/msdk/api/LoginRet;-><init>()V

    .line 58
    .local v0, "lr":Lcom/tencent/msdk/api/LoginRet;
    invoke-static {v0}, Lcom/tencent/msdk/login/LoginUtils;->getLocalLoginRet(Lcom/tencent/msdk/api/LoginRet;)I

    .line 59
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "newLogin timer wgloginwithlocalinfo,platform:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/tencent/msdk/api/LoginRet;->platform:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",CurrentThread:"

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

    invoke-static {v1}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 61
    iget v1, v0, Lcom/tencent/msdk/api/LoginRet;->platform:I

    if-eqz v1, :cond_44

    .line 62
    invoke-static {}, Lcom/tencent/msdk/login/LoginManager;->getInstance()Lcom/tencent/msdk/login/LoginManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v4, v2}, Lcom/tencent/msdk/login/LoginManager;->WGLoginWithLocalInfo(ZLcom/tencent/msdk/api/WakeupRet;)V

    .line 64
    :cond_44
    iget-object v1, p0, Lcom/tencent/msdk/login/LoginTimer$1;->this$0:Lcom/tencent/msdk/login/LoginTimer;

    # getter for: Lcom/tencent/msdk/login/LoginTimer;->mLoginHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/tencent/msdk/login/LoginTimer;->access$100(Lcom/tencent/msdk/login/LoginTimer;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/msdk/login/LoginTimer$1;->this$0:Lcom/tencent/msdk/login/LoginTimer;

    # getter for: Lcom/tencent/msdk/login/LoginTimer;->mPeriod:J
    invoke-static {v2}, Lcom/tencent/msdk/login/LoginTimer;->access$000(Lcom/tencent/msdk/login/LoginTimer;)J

    move-result-wide v2

    invoke-virtual {v1, v5, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 66
    .end local v0    # "lr":Lcom/tencent/msdk/api/LoginRet;
    :cond_53
    return v4
.end method
