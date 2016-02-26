.class Lcom/baidu/mobstat/m;
.super Ljava/lang/Object;


# static fields
.field private static a:Landroid/os/HandlerThread;

.field private static b:Landroid/os/Handler;

.field private static g:Lcom/baidu/mobstat/m;


# instance fields
.field private c:J

.field private d:J

.field private e:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lcom/baidu/mobstat/k;

.field private h:Z

.field private i:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "SessionAnalysisThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/baidu/mobstat/m;->a:Landroid/os/HandlerThread;

    new-instance v0, Lcom/baidu/mobstat/m;

    invoke-direct {v0}, Lcom/baidu/mobstat/m;-><init>()V

    sput-object v0, Lcom/baidu/mobstat/m;->g:Lcom/baidu/mobstat/m;

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    const-wide/16 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide v0, p0, Lcom/baidu/mobstat/m;->c:J

    iput-wide v0, p0, Lcom/baidu/mobstat/m;->d:J

    new-instance v0, Lcom/baidu/mobstat/k;

    invoke-direct {v0}, Lcom/baidu/mobstat/k;-><init>()V

    iput-object v0, p0, Lcom/baidu/mobstat/m;->f:Lcom/baidu/mobstat/k;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/mobstat/m;->h:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/mobstat/m;->i:Z

    sget-object v0, Lcom/baidu/mobstat/m;->a:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Landroid/os/Handler;

    sget-object v1, Lcom/baidu/mobstat/m;->a:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/baidu/mobstat/m;->b:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/baidu/mobstat/m;)Lcom/baidu/mobstat/k;
    .registers 2

    iget-object v0, p0, Lcom/baidu/mobstat/m;->f:Lcom/baidu/mobstat/k;

    return-object v0
.end method

.method public static a()Lcom/baidu/mobstat/m;
    .registers 1

    sget-object v0, Lcom/baidu/mobstat/m;->g:Lcom/baidu/mobstat/m;

    return-object v0
.end method

.method private a(Landroid/content/Context;)V
    .registers 5

    const/4 v2, 0x0

    if-nez p1, :cond_b

    const-string v0, "stat"

    const-string v1, "clearLastSession(Context context):context=null"

    invoke-static {v0, v1}, Lcom/baidu/mobstat/a/b;->a(Ljava/lang/String;Ljava/lang/String;)I

    :goto_a
    return-void

    :cond_b
    const-string v0, "{}"

    const-string v1, "__local_last_session.json"

    invoke-static {v2, p1, v1, v0, v2}, Lcom/baidu/mobstat/a/a;->a(ZLandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_a
.end method

.method static synthetic a(Lcom/baidu/mobstat/m;Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/baidu/mobstat/m;->a(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Lcom/baidu/mobstat/m;Landroid/content/Context;J)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/baidu/mobstat/m;->c(Landroid/content/Context;J)V

    return-void
.end method

.method private a(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/baidu/mobstat/m;->h:Z

    return-void
.end method

.method private c(Landroid/content/Context;J)V
    .registers 8

    const/4 v3, 0x0

    const-string v0, "stat"

    const-string v1, "flush current session to last_session.json"

    invoke-static {v0, v1}, Lcom/baidu/mobstat/a/b;->a(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "{}"

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iget-object v0, p0, Lcom/baidu/mobstat/m;->f:Lcom/baidu/mobstat/k;

    invoke-virtual {v0}, Lcom/baidu/mobstat/k;->c()Lorg/json/JSONObject;

    move-result-object v0

    :try_start_15
    const-string v1, "e"

    invoke-virtual {v0, v1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_1a
    .catch Lorg/json/JSONException; {:try_start_15 .. :try_end_1a} :catch_24

    :goto_1a
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "__local_last_session.json"

    invoke-static {v3, p1, v1, v0, v3}, Lcom/baidu/mobstat/a/a;->a(ZLandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void

    :catch_24
    move-exception v1

    const-string v1, "stat"

    const-string v2, "StatSession.flushSession() failed"

    invoke-static {v1, v2}, Lcom/baidu/mobstat/a/b;->a(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1a
.end method

.method private d()Z
    .registers 2

    iget-boolean v0, p0, Lcom/baidu/mobstat/m;->h:Z

    return v0
.end method


# virtual methods
.method public a(Landroid/content/Context;J)V
    .registers 12

    const/4 v3, 0x1

    const/4 v2, 0x0

    const-string v0, "stat"

    const-string v1, "post resume job"

    invoke-static {v0, v1}, Lcom/baidu/mobstat/a/b;->a(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/baidu/mobstat/m;->i:Z

    if-eqz v0, :cond_1b

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "stat"

    aput-object v1, v0, v2

    const-string v1, "\u9057\u6f0fStatService.onPause() || missing StatService.onPause()"

    aput-object v1, v0, v3

    invoke-static {v0}, Lcom/baidu/mobstat/a/b;->b([Ljava/lang/Object;)I

    :cond_1b
    iput-boolean v3, p0, Lcom/baidu/mobstat/m;->i:Z

    invoke-direct {p0}, Lcom/baidu/mobstat/m;->d()Z

    move-result v0

    if-eqz v0, :cond_30

    invoke-direct {p0, v2}, Lcom/baidu/mobstat/m;->a(Z)V

    sget-object v0, Lcom/baidu/mobstat/m;->b:Landroid/os/Handler;

    new-instance v1, Lcom/baidu/mobstat/n;

    invoke-direct {v1, p0}, Lcom/baidu/mobstat/n;-><init>(Lcom/baidu/mobstat/m;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_30
    new-instance v0, Lcom/baidu/mobstat/p;

    iget-wide v2, p0, Lcom/baidu/mobstat/m;->c:J

    move-object v1, p0

    move-wide v4, p2

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/baidu/mobstat/p;-><init>(Lcom/baidu/mobstat/m;JJLandroid/content/Context;)V

    sget-object v1, Lcom/baidu/mobstat/m;->b:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/baidu/mobstat/m;->e:Ljava/lang/ref/WeakReference;

    iput-wide p2, p0, Lcom/baidu/mobstat/m;->d:J

    return-void
.end method

.method public b()V
    .registers 3

    iget-object v0, p0, Lcom/baidu/mobstat/m;->f:Lcom/baidu/mobstat/k;

    iget-object v1, p0, Lcom/baidu/mobstat/m;->f:Lcom/baidu/mobstat/k;

    invoke-virtual {v1}, Lcom/baidu/mobstat/k;->d()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/baidu/mobstat/k;->a(I)V

    return-void
.end method

.method public b(Landroid/content/Context;J)V
    .registers 12

    const/4 v2, 0x0

    const-string v0, "stat"

    const-string v1, "post pause job"

    invoke-static {v0, v1}, Lcom/baidu/mobstat/a/b;->a(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/baidu/mobstat/m;->i:Z

    if-nez v0, :cond_1c

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "stat"

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const-string v2, "\u9057\u6f0fStatService.onResume() || missing StatService.onResume()"

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/baidu/mobstat/a/b;->b([Ljava/lang/Object;)I

    :goto_1b
    return-void

    :cond_1c
    iput-boolean v2, p0, Lcom/baidu/mobstat/m;->i:Z

    new-instance v0, Lcom/baidu/mobstat/o;

    iget-wide v5, p0, Lcom/baidu/mobstat/m;->d:J

    iget-object v1, p0, Lcom/baidu/mobstat/m;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/Context;

    move-object v1, p0

    move-wide v2, p2

    move-object v4, p1

    invoke-direct/range {v0 .. v7}, Lcom/baidu/mobstat/o;-><init>(Lcom/baidu/mobstat/m;JLandroid/content/Context;JLandroid/content/Context;)V

    sget-object v1, Lcom/baidu/mobstat/m;->b:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iput-wide p2, p0, Lcom/baidu/mobstat/m;->c:J

    goto :goto_1b
.end method

.method public c()J
    .registers 3

    iget-object v0, p0, Lcom/baidu/mobstat/m;->f:Lcom/baidu/mobstat/k;

    invoke-virtual {v0}, Lcom/baidu/mobstat/k;->a()J

    move-result-wide v0

    return-wide v0
.end method
