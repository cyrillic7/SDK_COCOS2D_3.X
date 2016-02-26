.class public Lcom/tencent/msdk/communicator/HttpRequestManager;
.super Ljava/lang/Object;
.source "HttpRequestManager.java"


# static fields
.field public static final NOTICE_ACTION:Ljava/lang/String; = "/notice/gather_data/"

.field public static final PFKEY_ACTION:Ljava/lang/String; = "/auth/getlogin_info/"

.field public static final QQA8LOGIN_ACTION:Ljava/lang/String; = "/auth/qqa8_login/"

.field public static final RSP_KEY:Ljava/lang/String; = "http_rsp"

.field public static final WXEXPIRED_LOGIN_ACTION:Ljava/lang/String; = "/auth/wxexpired_login/"

.field public static final WXFIRST_LOGIN_ACTION:Ljava/lang/String; = "/auth/wxfirst_login/"

.field public static final isEncode:Ljava/lang/Boolean;

.field public static final msdkEncodeType:I = 0x2


# instance fields
.field private mListener:Lcom/tencent/msdk/communicator/IHttpRequestListener;

.field private mWorkerHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 18
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/tencent/msdk/communicator/HttpRequestManager;->isEncode:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>(Lcom/tencent/msdk/communicator/IHttpRequestListener;)V
    .registers 2
    .param p1, "listener"    # Lcom/tencent/msdk/communicator/IHttpRequestListener;

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/tencent/msdk/communicator/HttpRequestManager;->mListener:Lcom/tencent/msdk/communicator/IHttpRequestListener;

    .line 30
    invoke-direct {p0}, Lcom/tencent/msdk/communicator/HttpRequestManager;->initHandle()V

    .line 31
    return-void
.end method

.method static synthetic access$000(Lcom/tencent/msdk/communicator/HttpRequestManager;Ljava/lang/Integer;Ljava/lang/String;I)V
    .registers 4
    .param p0, "x0"    # Lcom/tencent/msdk/communicator/HttpRequestManager;
    .param p1, "x1"    # Ljava/lang/Integer;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # I

    .prologue
    .line 16
    invoke-direct {p0, p1, p2, p3}, Lcom/tencent/msdk/communicator/HttpRequestManager;->notifyRequestfailure(Ljava/lang/Integer;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$100(Lcom/tencent/msdk/communicator/HttpRequestManager;Ljava/lang/Integer;Ljava/lang/String;I)V
    .registers 4
    .param p0, "x0"    # Lcom/tencent/msdk/communicator/HttpRequestManager;
    .param p1, "x1"    # Ljava/lang/Integer;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # I

    .prologue
    .line 16
    invoke-direct {p0, p1, p2, p3}, Lcom/tencent/msdk/communicator/HttpRequestManager;->notifyRequestSuccess(Ljava/lang/Integer;Ljava/lang/String;I)V

    return-void
.end method

.method private initHandle()V
    .registers 4

    .prologue
    .line 34
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Lcom/tencent/msdk/communicator/HttpRequestManager$1;

    invoke-direct {v2, p0}, Lcom/tencent/msdk/communicator/HttpRequestManager$1;-><init>(Lcom/tencent/msdk/communicator/HttpRequestManager;)V

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/tencent/msdk/communicator/HttpRequestManager;->mWorkerHandler:Landroid/os/Handler;

    .line 89
    return-void
.end method

.method private notifyRequestSuccess(Ljava/lang/Integer;Ljava/lang/String;I)V
    .registers 6
    .param p1, "key"    # Ljava/lang/Integer;
    .param p2, "jsonBody"    # Ljava/lang/String;
    .param p3, "statusCode"    # I

    .prologue
    .line 102
    iget-object v0, p0, Lcom/tencent/msdk/communicator/HttpRequestManager;->mListener:Lcom/tencent/msdk/communicator/IHttpRequestListener;

    if-eqz v0, :cond_d

    .line 103
    iget-object v0, p0, Lcom/tencent/msdk/communicator/HttpRequestManager;->mListener:Lcom/tencent/msdk/communicator/IHttpRequestListener;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, p2, p3, v1}, Lcom/tencent/msdk/communicator/IHttpRequestListener;->onSuccess(Ljava/lang/String;II)V

    .line 105
    :cond_d
    return-void
.end method

.method private notifyRequestfailure(Ljava/lang/Integer;Ljava/lang/String;I)V
    .registers 6
    .param p1, "key"    # Ljava/lang/Integer;
    .param p2, "errorContent"    # Ljava/lang/String;
    .param p3, "statusCode"    # I

    .prologue
    .line 108
    iget-object v0, p0, Lcom/tencent/msdk/communicator/HttpRequestManager;->mListener:Lcom/tencent/msdk/communicator/IHttpRequestListener;

    if-eqz v0, :cond_d

    .line 109
    iget-object v0, p0, Lcom/tencent/msdk/communicator/HttpRequestManager;->mListener:Lcom/tencent/msdk/communicator/IHttpRequestListener;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, p2, p3, v1}, Lcom/tencent/msdk/communicator/IHttpRequestListener;->onFailure(Ljava/lang/String;II)V

    .line 111
    :cond_d
    return-void
.end method


# virtual methods
.method protected getInterfaceName()Ljava/lang/String;
    .registers 5

    .prologue
    .line 92
    iget-object v3, p0, Lcom/tencent/msdk/communicator/HttpRequestManager;->mListener:Lcom/tencent/msdk/communicator/IHttpRequestListener;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 93
    .local v1, "name":Ljava/lang/String;
    const-string v3, "\\."

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 94
    .local v2, "nameArray":[Ljava/lang/String;
    const/4 v0, 0x0

    .line 95
    .local v0, "interfaceName":Ljava/lang/String;
    if-eqz v2, :cond_1b

    array-length v3, v2

    if-lez v3, :cond_1b

    .line 96
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    aget-object v0, v2, v3

    .line 98
    :cond_1b
    return-object v0
.end method

.method public declared-synchronized getTextAsync(Ljava/lang/String;I)V
    .registers 7
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "what"    # I

    .prologue
    .line 138
    monitor-enter p0

    :try_start_1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-nez v1, :cond_c

    .line 139
    const-string v1, "The calling thread has not called Looper.prepare()"

    invoke-static {v1}, Lcom/tencent/msdk/tools/Logger;->w(Ljava/lang/String;)V

    .line 141
    :cond_c
    new-instance v0, Lcom/tencent/msdk/communicator/MHttpRequest;

    invoke-direct {v0}, Lcom/tencent/msdk/communicator/MHttpRequest;-><init>()V

    .line 142
    .local v0, "req":Lcom/tencent/msdk/communicator/MHttpRequest;
    invoke-virtual {v0, p1}, Lcom/tencent/msdk/communicator/MHttpRequest;->setUrl(Ljava/lang/String;)V

    .line 143
    sget-object v1, Lcom/tencent/msdk/communicator/MHttpRequest$HttpMethod;->GET:Lcom/tencent/msdk/communicator/MHttpRequest$HttpMethod;

    invoke-virtual {v0, v1}, Lcom/tencent/msdk/communicator/MHttpRequest;->setMethod(Lcom/tencent/msdk/communicator/MHttpRequest$HttpMethod;)V

    .line 145
    new-instance v1, Lcom/tencent/msdk/communicator/HttpTask;

    iget-object v2, p0, Lcom/tencent/msdk/communicator/HttpRequestManager;->mWorkerHandler:Landroid/os/Handler;

    invoke-direct {v1, v2, p2}, Lcom/tencent/msdk/communicator/HttpTask;-><init>(Landroid/os/Handler;I)V

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/tencent/msdk/communicator/MHttpRequest;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Lcom/tencent/msdk/communicator/HttpTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_29
    .catchall {:try_start_1 .. :try_end_29} :catchall_2b

    .line 146
    monitor-exit p0

    return-void

    .line 138
    .end local v0    # "req":Lcom/tencent/msdk/communicator/MHttpRequest;
    :catchall_2b
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized postTextAsync(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 8
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "body"    # Ljava/lang/String;
    .param p3, "what"    # I

    .prologue
    .line 118
    monitor-enter p0

    :try_start_1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-nez v1, :cond_c

    .line 119
    const-string v1, "The calling thread has not called Looper.prepare()"

    invoke-static {v1}, Lcom/tencent/msdk/tools/Logger;->w(Ljava/lang/String;)V

    .line 121
    :cond_c
    new-instance v0, Lcom/tencent/msdk/communicator/MHttpRequest;

    invoke-direct {v0}, Lcom/tencent/msdk/communicator/MHttpRequest;-><init>()V

    .line 122
    .local v0, "req":Lcom/tencent/msdk/communicator/MHttpRequest;
    invoke-virtual {v0, p1}, Lcom/tencent/msdk/communicator/MHttpRequest;->setUrl(Ljava/lang/String;)V

    .line 123
    sget-object v1, Lcom/tencent/msdk/communicator/MHttpRequest$HttpMethod;->POST:Lcom/tencent/msdk/communicator/MHttpRequest$HttpMethod;

    invoke-virtual {v0, v1}, Lcom/tencent/msdk/communicator/MHttpRequest;->setMethod(Lcom/tencent/msdk/communicator/MHttpRequest$HttpMethod;)V

    .line 124
    const/16 v1, 0x7e4

    if-ne v1, p3, :cond_32

    .line 125
    invoke-virtual {v0, p2}, Lcom/tencent/msdk/communicator/MHttpRequest;->setStrBody(Ljava/lang/String;)V

    .line 130
    :goto_20
    new-instance v1, Lcom/tencent/msdk/communicator/HttpTask;

    iget-object v2, p0, Lcom/tencent/msdk/communicator/HttpRequestManager;->mWorkerHandler:Landroid/os/Handler;

    invoke-direct {v1, v2, p3}, Lcom/tencent/msdk/communicator/HttpTask;-><init>(Landroid/os/Handler;I)V

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/tencent/msdk/communicator/MHttpRequest;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Lcom/tencent/msdk/communicator/HttpTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_30
    .catchall {:try_start_1 .. :try_end_30} :catchall_36

    .line 131
    monitor-exit p0

    return-void

    .line 127
    :cond_32
    :try_start_32
    invoke-virtual {v0, p2}, Lcom/tencent/msdk/communicator/MHttpRequest;->setBody(Ljava/lang/String;)V
    :try_end_35
    .catchall {:try_start_32 .. :try_end_35} :catchall_36

    goto :goto_20

    .line 118
    .end local v0    # "req":Lcom/tencent/msdk/communicator/MHttpRequest;
    :catchall_36
    move-exception v1

    monitor-exit p0

    throw v1
.end method
