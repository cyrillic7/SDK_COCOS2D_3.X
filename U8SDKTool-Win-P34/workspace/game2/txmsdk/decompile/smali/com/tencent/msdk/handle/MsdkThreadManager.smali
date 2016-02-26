.class public Lcom/tencent/msdk/handle/MsdkThreadManager;
.super Ljava/lang/Object;
.source "MsdkThreadManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/msdk/handle/MsdkThreadManager$QQA8Info;
    }
.end annotation


# static fields
.field private static volatile instance:Lcom/tencent/msdk/handle/MsdkThreadManager;


# instance fields
.field private mainHandler:Landroid/os/Handler;

.field private msdkHandler:Landroid/os/Handler;

.field private msdkThread:Lcom/tencent/msdk/handle/MsdkThread;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 28
    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/msdk/handle/MsdkThreadManager;->instance:Lcom/tencent/msdk/handle/MsdkThreadManager;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object v0, p0, Lcom/tencent/msdk/handle/MsdkThreadManager;->msdkThread:Lcom/tencent/msdk/handle/MsdkThread;

    .line 26
    iput-object v0, p0, Lcom/tencent/msdk/handle/MsdkThreadManager;->msdkHandler:Landroid/os/Handler;

    .line 27
    iput-object v0, p0, Lcom/tencent/msdk/handle/MsdkThreadManager;->mainHandler:Landroid/os/Handler;

    .line 191
    return-void
.end method

.method public static getInstance()Lcom/tencent/msdk/handle/MsdkThreadManager;
    .registers 2

    .prologue
    .line 31
    sget-object v0, Lcom/tencent/msdk/handle/MsdkThreadManager;->instance:Lcom/tencent/msdk/handle/MsdkThreadManager;

    if-nez v0, :cond_13

    .line 32
    const-class v1, Lcom/tencent/msdk/handle/MsdkThreadManager;

    monitor-enter v1

    .line 33
    :try_start_7
    sget-object v0, Lcom/tencent/msdk/handle/MsdkThreadManager;->instance:Lcom/tencent/msdk/handle/MsdkThreadManager;

    if-nez v0, :cond_12

    .line 34
    new-instance v0, Lcom/tencent/msdk/handle/MsdkThreadManager;

    invoke-direct {v0}, Lcom/tencent/msdk/handle/MsdkThreadManager;-><init>()V

    sput-object v0, Lcom/tencent/msdk/handle/MsdkThreadManager;->instance:Lcom/tencent/msdk/handle/MsdkThreadManager;

    .line 36
    :cond_12
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_16

    .line 38
    :cond_13
    sget-object v0, Lcom/tencent/msdk/handle/MsdkThreadManager;->instance:Lcom/tencent/msdk/handle/MsdkThreadManager;

    return-object v0

    .line 36
    :catchall_16
    move-exception v0

    :try_start_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v0
.end method


# virtual methods
.method public init()V
    .registers 4

    .prologue
    .line 42
    new-instance v0, Lcom/tencent/msdk/handle/MsdkThread;

    const-string v1, "MsdkThread"

    invoke-direct {v0, v1}, Lcom/tencent/msdk/handle/MsdkThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/tencent/msdk/handle/MsdkThreadManager;->msdkThread:Lcom/tencent/msdk/handle/MsdkThread;

    .line 43
    iget-object v0, p0, Lcom/tencent/msdk/handle/MsdkThreadManager;->msdkThread:Lcom/tencent/msdk/handle/MsdkThread;

    invoke-virtual {v0}, Lcom/tencent/msdk/handle/MsdkThread;->start()V

    .line 44
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/tencent/msdk/handle/MsdkThreadManager;->msdkThread:Lcom/tencent/msdk/handle/MsdkThread;

    invoke-virtual {v1}, Lcom/tencent/msdk/handle/MsdkThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/msdk/handle/MsdkThreadManager;->msdkThread:Lcom/tencent/msdk/handle/MsdkThread;

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/tencent/msdk/handle/MsdkThreadManager;->msdkHandler:Landroid/os/Handler;

    .line 46
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Lcom/tencent/msdk/handle/MsdkThreadManager$1;

    invoke-direct {v2, p0}, Lcom/tencent/msdk/handle/MsdkThreadManager$1;-><init>(Lcom/tencent/msdk/handle/MsdkThreadManager;)V

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/tencent/msdk/handle/MsdkThreadManager;->mainHandler:Landroid/os/Handler;

    .line 126
    return-void
.end method

.method public qqA8Req(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 7
    .param p1, "openAuthData"    # Ljava/lang/String;
    .param p2, "openAuthSt"    # Ljava/lang/String;
    .param p3, "notifyState"    # I

    .prologue
    .line 148
    const-string v2, "qqA8Req"

    invoke-static {v2}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 149
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 150
    .local v1, "msg":Landroid/os/Message;
    const/16 v2, 0x9

    iput v2, v1, Landroid/os/Message;->what:I

    .line 151
    new-instance v0, Lcom/tencent/msdk/handle/MsdkThreadManager$QQA8Info;

    invoke-direct {v0, p0}, Lcom/tencent/msdk/handle/MsdkThreadManager$QQA8Info;-><init>(Lcom/tencent/msdk/handle/MsdkThreadManager;)V

    .line 152
    .local v0, "info":Lcom/tencent/msdk/handle/MsdkThreadManager$QQA8Info;
    iput-object p1, v0, Lcom/tencent/msdk/handle/MsdkThreadManager$QQA8Info;->openAuthData:Ljava/lang/String;

    .line 153
    iput-object p2, v0, Lcom/tencent/msdk/handle/MsdkThreadManager$QQA8Info;->openAuthSt:Ljava/lang/String;

    .line 154
    iput p3, v0, Lcom/tencent/msdk/handle/MsdkThreadManager$QQA8Info;->notifyState:I

    .line 155
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 156
    iget-object v2, p0, Lcom/tencent/msdk/handle/MsdkThreadManager;->mainHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 157
    return-void
.end method

.method public queryQQUserInfo()V
    .registers 3

    .prologue
    .line 132
    const-string v1, "queryQQMyInfo"

    invoke-static {v1}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 133
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 134
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0xd

    iput v1, v0, Landroid/os/Message;->what:I

    .line 135
    iget-object v1, p0, Lcom/tencent/msdk/handle/MsdkThreadManager;->mainHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 136
    return-void
.end method

.method public queryWXUserInfo()V
    .registers 3

    .prologue
    .line 140
    const-string v1, "queryWXMyInfo"

    invoke-static {v1}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 141
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 142
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0xf

    iput v1, v0, Landroid/os/Message;->what:I

    .line 143
    iget-object v1, p0, Lcom/tencent/msdk/handle/MsdkThreadManager;->mainHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 144
    return-void
.end method

.method public sendGetPermissionMsg()V
    .registers 3

    .prologue
    .line 168
    const-string v0, "sendGetPermissionMsg"

    invoke-static {v0}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 169
    iget-object v0, p0, Lcom/tencent/msdk/handle/MsdkThreadManager;->msdkHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 170
    return-void
.end method

.method public sendGetSchedulingMsg(Landroid/content/Context;)V
    .registers 4
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 173
    const-string v1, "sendGetSchedulingMsg"

    invoke-static {v1}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 174
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 175
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 176
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 177
    iget-object v1, p0, Lcom/tencent/msdk/handle/MsdkThreadManager;->msdkHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 178
    return-void
.end method

.method public sendHandlerMessage(Landroid/os/Message;)V
    .registers 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 128
    iget-object v0, p0, Lcom/tencent/msdk/handle/MsdkThreadManager;->mainHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 129
    return-void
.end method

.method public sendLoginMsg(I)V
    .registers 4
    .param p1, "platform"    # I

    .prologue
    .line 160
    const-string v1, "sendLoginMsg"

    invoke-static {v1}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 161
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 162
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x3

    iput v1, v0, Landroid/os/Message;->what:I

    .line 163
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 164
    iget-object v1, p0, Lcom/tencent/msdk/handle/MsdkThreadManager;->mainHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 165
    return-void
.end method

.method public sendReportLogin(Ljava/lang/String;I)V
    .registers 6
    .param p1, "openId"    # Ljava/lang/String;
    .param p2, "platId"    # I

    .prologue
    .line 181
    const-string v2, "sendReportLogin"

    invoke-static {v2}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 182
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 183
    .local v0, "data":Landroid/os/Bundle;
    const-string v2, "openId"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    const-string v2, "platId"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 185
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 186
    .local v1, "msg":Landroid/os/Message;
    const/4 v2, 0x2

    iput v2, v1, Landroid/os/Message;->what:I

    .line 187
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 188
    iget-object v2, p0, Lcom/tencent/msdk/handle/MsdkThreadManager;->msdkHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 189
    return-void
.end method
