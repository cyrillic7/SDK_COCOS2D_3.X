.class public Lcom/baidu/android/pushservice/f/t;
.super Ljava/lang/Object;


# instance fields
.field private final a:Landroid/content/Context;

.field private b:Lcom/baidu/android/pushservice/f/i;

.field private final c:Lcom/baidu/android/pushservice/f/q;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/baidu/android/pushservice/f/t;->a:Landroid/content/Context;

    new-instance v0, Lcom/baidu/android/pushservice/f/q;

    invoke-direct {v0, p1}, Lcom/baidu/android/pushservice/f/q;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/baidu/android/pushservice/f/t;->c:Lcom/baidu/android/pushservice/f/q;

    invoke-static {p1}, Lcom/baidu/android/pushservice/f/i;->a(Landroid/content/Context;)Lcom/baidu/android/pushservice/f/i;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/android/pushservice/f/t;->b:Lcom/baidu/android/pushservice/f/i;

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/baidu/android/pushservice/f/b;)J
    .registers 4

    invoke-static {p0, p1}, Lcom/baidu/android/pushservice/util/PushDatabase;->insertADPushBehavior(Landroid/content/Context;Lcom/baidu/android/pushservice/f/b;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static a(Landroid/content/Context;Lcom/baidu/android/pushservice/f/c;)J
    .registers 4

    invoke-static {p0, p1}, Lcom/baidu/android/pushservice/util/PushDatabase;->insertApiBehavior(Landroid/content/Context;Lcom/baidu/android/pushservice/f/c;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static a(Landroid/content/Context;Lcom/baidu/android/pushservice/f/g;)J
    .registers 4

    invoke-static {p0, p1}, Lcom/baidu/android/pushservice/util/PushDatabase;->insertCrashBehavior(Landroid/content/Context;Lcom/baidu/android/pushservice/f/g;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static a(Landroid/content/Context;Lcom/baidu/android/pushservice/f/j;)J
    .registers 4

    invoke-static {p0, p1}, Lcom/baidu/android/pushservice/util/PushDatabase;->insertPromptBehavior(Landroid/content/Context;Lcom/baidu/android/pushservice/f/j;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static a(Landroid/content/Context;Lcom/baidu/android/pushservice/f/k;)J
    .registers 4

    invoke-static {p0, p1}, Lcom/baidu/android/pushservice/util/PushDatabase;->insertAppInfo(Landroid/content/Context;Lcom/baidu/android/pushservice/f/k;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static a(Landroid/content/Context;Lcom/baidu/android/pushservice/f/l;)J
    .registers 4

    invoke-static {p0, p1}, Lcom/baidu/android/pushservice/util/PushDatabase;->insertPushBehavior(Landroid/content/Context;Lcom/baidu/android/pushservice/f/l;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static a(Landroid/content/Context;Lcom/baidu/android/pushservice/f/u;)J
    .registers 4

    invoke-static {p0, p1}, Lcom/baidu/android/pushservice/util/PushDatabase;->insertWifiActionBehavior(Landroid/content/Context;Lcom/baidu/android/pushservice/f/u;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static a(Landroid/content/Context;Lcom/baidu/android/pushservice/f/w;)J
    .registers 4

    invoke-static {p0, p1}, Lcom/baidu/android/pushservice/util/PushDatabase;->insertWifiBehavior(Landroid/content/Context;Lcom/baidu/android/pushservice/f/w;)J

    move-result-wide v0

    return-wide v0
.end method

.method private a()Z
    .registers 7

    const/4 v0, 0x0

    invoke-static {}, Lcom/baidu/android/pushservice/PushSettings;->i()Z

    move-result v1

    if-nez v1, :cond_f

    iget-object v1, p0, Lcom/baidu/android/pushservice/f/t;->b:Lcom/baidu/android/pushservice/f/i;

    invoke-virtual {v1}, Lcom/baidu/android/pushservice/f/i;->d()Z

    move-result v1

    if-eqz v1, :cond_10

    :cond_f
    :goto_f
    return v0

    :cond_10
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v1, p0, Lcom/baidu/android/pushservice/f/t;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/baidu/android/pushservice/util/c;->c(Landroid/content/Context;)J

    move-result-wide v4

    sub-long v4, v2, v4

    invoke-static {}, Lcom/baidu/android/pushservice/PushSettings;->h()Z

    move-result v1

    if-eqz v1, :cond_2d

    invoke-static {}, Lcom/baidu/android/pushservice/PushSettings;->g()I

    move-result v1

    int-to-long v2, v1

    :goto_27
    cmp-long v1, v4, v2

    if-lez v1, :cond_f

    const/4 v0, 0x1

    goto :goto_f

    :cond_2d
    const-wide/32 v2, 0x2932e00

    goto :goto_27
.end method

.method public static b(Landroid/content/Context;Lcom/baidu/android/pushservice/f/j;)J
    .registers 4

    invoke-static {p0, p1}, Lcom/baidu/android/pushservice/util/PushDatabase;->insertAgentOrHttpBehavior(Landroid/content/Context;Lcom/baidu/android/pushservice/f/j;)J

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method public a(JJ)V
    .registers 6

    iget-object v0, p0, Lcom/baidu/android/pushservice/f/t;->c:Lcom/baidu/android/pushservice/f/q;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/baidu/android/pushservice/f/q;->a(JJ)V

    return-void
.end method

.method public a(ZLcom/baidu/frontia/module/deeplink/e;)V
    .registers 4

    iget-object v0, p0, Lcom/baidu/android/pushservice/f/t;->b:Lcom/baidu/android/pushservice/f/i;

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/baidu/android/pushservice/f/t;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/baidu/android/pushservice/f/i;->a(Landroid/content/Context;)Lcom/baidu/android/pushservice/f/i;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/android/pushservice/f/t;->b:Lcom/baidu/android/pushservice/f/i;

    :cond_c
    iget-object v0, p0, Lcom/baidu/android/pushservice/f/t;->b:Lcom/baidu/android/pushservice/f/i;

    invoke-virtual {v0, p2}, Lcom/baidu/android/pushservice/f/i;->a(Lcom/baidu/frontia/module/deeplink/e;)V

    if-nez p1, :cond_19

    invoke-direct {p0}, Lcom/baidu/android/pushservice/f/t;->a()Z

    move-result v0

    if-eqz v0, :cond_1e

    :cond_19
    iget-object v0, p0, Lcom/baidu/android/pushservice/f/t;->b:Lcom/baidu/android/pushservice/f/i;

    invoke-virtual {v0, p1}, Lcom/baidu/android/pushservice/f/i;->b(Z)V

    :cond_1e
    return-void
.end method
