.class public Lcom/baidu/bdgame/sdk/obf/as;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/bdgame/sdk/obf/as$1;,
        Lcom/baidu/bdgame/sdk/obf/as$a;
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/String; = "com.baidu.platformsdk.intent.share"

.field public static final b:Ljava/lang/String; = "com.baidu.platformsdk.intent.share.key"


# instance fields
.field private c:Lcom/baidu/bdgame/sdk/obf/ai;

.field private d:I

.field private e:Lcom/baidu/bdgame/sdk/obf/bt;

.field private f:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/baidu/bdgame/sdk/obf/o;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    sget v0, Lcom/baidu/bdgame/sdk/obf/bl;->d:I

    iput v0, p0, Lcom/baidu/bdgame/sdk/obf/as;->d:I

    .line 43
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/bt;

    invoke-direct {v0}, Lcom/baidu/bdgame/sdk/obf/bt;-><init>()V

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/as;->e:Lcom/baidu/bdgame/sdk/obf/bt;

    .line 44
    return-void
.end method

.method synthetic constructor <init>(Lcom/baidu/bdgame/sdk/obf/as$1;)V
    .registers 2

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/as;-><init>()V

    return-void
.end method

.method public static a()Lcom/baidu/bdgame/sdk/obf/as;
    .registers 1

    .prologue
    .line 51
    sget-object v0, Lcom/baidu/bdgame/sdk/obf/as$a;->a:Lcom/baidu/bdgame/sdk/obf/as;

    return-object v0
.end method

.method public static a(Landroid/content/Context;Z)V
    .registers 3

    .prologue
    .line 235
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/baidu/bdgame/sdk/obf/lg;->a(Landroid/content/Context;Ljava/lang/Boolean;)V

    .line 236
    return-void
.end method

.method private static b(Landroid/content/Context;Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 179
    const-string v0, "863c071d20569198cdf02d9f5cc619ad76140ae8392011b9c19649bf793a8815af7ea533aee121ae83b4d90a5c1ae5d504b3e4fd1a2ca75ac299e27dc9061977"

    const-string v1, "10001"

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/kp;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/security/interfaces/RSAPublicKey;

    move-result-object v0

    .line 181
    invoke-static {v0, p1}, Lcom/baidu/bdgame/sdk/obf/kp;->a(Ljava/security/Key;Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/ki;->c([B)Ljava/lang/String;

    move-result-object v0

    .line 182
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 183
    const-string v2, "com.baidu.platformsdk.intent.share"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 184
    const-string v2, "com.baidu.platformsdk.intent.share.key"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 185
    invoke-virtual {p0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 187
    const-string v1, "BaiduPlatformSDK"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bduss sent: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/baidu/bdgame/sdk/obf/la;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    return-void
.end method

.method private static c(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 247
    invoke-static {p0, p1}, Lcom/baidu/bdgame/sdk/obf/aj;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/baidu/bdgame/sdk/obf/aj;

    move-result-object v0

    .line 248
    new-instance v1, Lcom/baidu/bdgame/sdk/obf/bo;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v0, v2}, Lcom/baidu/bdgame/sdk/obf/bo;-><init>(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/kc;Lcom/baidu/bdgame/sdk/obf/n;)V

    .line 249
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/bj;

    invoke-direct {v0, p0, v1}, Lcom/baidu/bdgame/sdk/obf/bj;-><init>(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/bn;)V

    .line 250
    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/bj;->b()V

    .line 251
    return-void
.end method

.method private h(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 69
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/as;->c:Lcom/baidu/bdgame/sdk/obf/ai;

    if-eqz v0, :cond_a

    .line 70
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/as;->c:Lcom/baidu/bdgame/sdk/obf/ai;

    .line 71
    invoke-static {p1}, Lcom/baidu/bdgame/sdk/obf/as;->i(Landroid/content/Context;)V

    .line 73
    :cond_a
    return-void
.end method

.method private static i(Landroid/content/Context;)V
    .registers 4

    .prologue
    .line 147
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 148
    const-string v1, "com.baidu.platformsdk.intent.login"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 149
    const-string v1, "result_code"

    const/16 v2, -0x3eb

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 150
    const-string v1, "result_desc"

    const-string v2, "bdp_passport_logut"

    invoke-static {p0, v2}, Lcom/baidu/bdgame/sdk/obf/kq;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 151
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 152
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 153
    return-void
.end method

.method private static j(Landroid/content/Context;)V
    .registers 4

    .prologue
    .line 156
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 157
    const-string v1, "com.baidu.platformsdk.intent.login"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 158
    const-string v1, "result_code"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 159
    const-string v1, "result_desc"

    const-string v2, "bdp_passport_login"

    invoke-static {p0, v2}, Lcom/baidu/bdgame/sdk/obf/kq;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 160
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 161
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 162
    return-void
.end method

.method private static k(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 165
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 166
    const-string v1, "com.baidu.platformsdk.intent.guest2fullmember"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 167
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 168
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 169
    return-void
.end method

.method private static l(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 172
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 173
    const-string v1, "com.baidu.platformsdk.intent.convert2baiduaccount"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 174
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 175
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 176
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;I)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/bdgame/sdk/obf/r;",
            ">;"
        }
    .end annotation

    .prologue
    .line 262
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/as;->e:Lcom/baidu/bdgame/sdk/obf/bt;

    invoke-virtual {v0, p1, p2}, Lcom/baidu/bdgame/sdk/obf/bt;->c(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/content/Context;)V
    .registers 4

    .prologue
    .line 55
    invoke-static {p1}, Lcom/baidu/bdgame/sdk/obf/bl;->b(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/baidu/bdgame/sdk/obf/as;->d:I

    .line 56
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/as;->e:Lcom/baidu/bdgame/sdk/obf/bt;

    iget v1, p0, Lcom/baidu/bdgame/sdk/obf/as;->d:I

    invoke-virtual {v0, p1, v1}, Lcom/baidu/bdgame/sdk/obf/bt;->a(Landroid/content/Context;I)V

    .line 57
    invoke-virtual {p0, p1}, Lcom/baidu/bdgame/sdk/obf/as;->e(Landroid/content/Context;)Z

    .line 58
    return-void
.end method

.method public a(Landroid/content/Context;ILjava/lang/String;)V
    .registers 5

    .prologue
    .line 270
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/as;->e:Lcom/baidu/bdgame/sdk/obf/bt;

    invoke-virtual {v0, p1, p2, p3}, Lcom/baidu/bdgame/sdk/obf/bt;->a(Landroid/content/Context;ILjava/lang/String;)V

    .line 271
    return-void
.end method

.method public declared-synchronized a(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/ai;)V
    .registers 8

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 77
    monitor-enter p0

    .line 81
    :try_start_3
    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/as;->c:Lcom/baidu/bdgame/sdk/obf/ai;

    if-eqz v2, :cond_86

    .line 82
    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/as;->c:Lcom/baidu/bdgame/sdk/obf/ai;

    invoke-virtual {v2}, Lcom/baidu/bdgame/sdk/obf/ai;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/baidu/bdgame/sdk/obf/ai;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_86

    .line 83
    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/as;->c:Lcom/baidu/bdgame/sdk/obf/ai;

    invoke-virtual {v2}, Lcom/baidu/bdgame/sdk/obf/ai;->j()Z

    move-result v2

    if-eqz v2, :cond_5f

    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/as;->c:Lcom/baidu/bdgame/sdk/obf/ai;

    invoke-virtual {v2, p2}, Lcom/baidu/bdgame/sdk/obf/ai;->a(Lcom/baidu/bdgame/sdk/obf/ai;)Z

    move-result v2

    if-eqz v2, :cond_5f

    invoke-virtual {p2}, Lcom/baidu/bdgame/sdk/obf/ai;->k()Z

    move-result v2

    if-eqz v2, :cond_5f

    .line 95
    :goto_2d
    iput-object p2, p0, Lcom/baidu/bdgame/sdk/obf/as;->c:Lcom/baidu/bdgame/sdk/obf/ai;

    .line 103
    if-eqz v1, :cond_79

    .line 105
    invoke-static {p1}, Lcom/baidu/bdgame/sdk/obf/as;->k(Landroid/content/Context;)V

    .line 115
    :goto_34
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/as;->c:Lcom/baidu/bdgame/sdk/obf/ai;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/ai;->h()Lcom/baidu/bdgame/sdk/obf/s;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/s;->a()I

    move-result v0

    if-nez v0, :cond_5d

    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/as;->c:Lcom/baidu/bdgame/sdk/obf/ai;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/ai;->k()Z

    move-result v0

    if-eqz v0, :cond_5d

    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/as;->c:Lcom/baidu/bdgame/sdk/obf/ai;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/ai;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5d

    .line 118
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/as;->c:Lcom/baidu/bdgame/sdk/obf/ai;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/ai;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/baidu/bdgame/sdk/obf/as;->b(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_5d
    .catchall {:try_start_3 .. :try_end_5d} :catchall_7f

    .line 120
    :cond_5d
    monitor-exit p0

    return-void

    .line 86
    :cond_5f
    :try_start_5f
    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/as;->c:Lcom/baidu/bdgame/sdk/obf/ai;

    invoke-virtual {v2}, Lcom/baidu/bdgame/sdk/obf/ai;->h()Lcom/baidu/bdgame/sdk/obf/s;

    move-result-object v2

    invoke-virtual {v2}, Lcom/baidu/bdgame/sdk/obf/s;->a()I

    move-result v2

    if-eqz v2, :cond_86

    invoke-virtual {p2}, Lcom/baidu/bdgame/sdk/obf/ai;->h()Lcom/baidu/bdgame/sdk/obf/s;

    move-result-object v2

    invoke-virtual {v2}, Lcom/baidu/bdgame/sdk/obf/s;->a()I

    move-result v2

    if-nez v2, :cond_86

    move v4, v1

    move v1, v0

    move v0, v4

    .line 89
    goto :goto_2d

    .line 106
    :cond_79
    if-eqz v0, :cond_82

    .line 108
    invoke-static {p1}, Lcom/baidu/bdgame/sdk/obf/as;->l(Landroid/content/Context;)V
    :try_end_7e
    .catchall {:try_start_5f .. :try_end_7e} :catchall_7f

    goto :goto_34

    .line 77
    :catchall_7f
    move-exception v0

    monitor-exit p0

    throw v0

    .line 111
    :cond_82
    :try_start_82
    invoke-static {p1}, Lcom/baidu/bdgame/sdk/obf/as;->j(Landroid/content/Context;)V
    :try_end_85
    .catchall {:try_start_82 .. :try_end_85} :catchall_7f

    goto :goto_34

    :cond_86
    move v1, v0

    goto :goto_2d
.end method

.method public a(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/s;)V
    .registers 4

    .prologue
    .line 266
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/as;->e:Lcom/baidu/bdgame/sdk/obf/bt;

    invoke-virtual {v0, p1, p2}, Lcom/baidu/bdgame/sdk/obf/bt;->a(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/s;)V

    .line 267
    return-void
.end method

.method public a(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/s;J)V
    .registers 6

    .prologue
    .line 217
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/as;->e:Lcom/baidu/bdgame/sdk/obf/bt;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/baidu/bdgame/sdk/obf/bt;->a(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/s;J)V

    .line 218
    return-void
.end method

.method public declared-synchronized a(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 296
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/as;->c:Lcom/baidu/bdgame/sdk/obf/ai;

    if-eqz v0, :cond_9

    .line 297
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/as;->f:Ljava/lang/ref/WeakReference;
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_19

    if-nez v0, :cond_b

    .line 305
    :cond_9
    :goto_9
    monitor-exit p0

    return-void

    .line 300
    :cond_b
    :try_start_b
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/as;->f:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/bdgame/sdk/obf/o;

    .line 301
    if-eqz v0, :cond_9

    .line 302
    invoke-interface {v0, p1, p2}, Lcom/baidu/bdgame/sdk/obf/o;->a(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_18
    .catchall {:try_start_b .. :try_end_18} :catchall_19

    goto :goto_9

    .line 296
    :catchall_19
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Lcom/baidu/bdgame/sdk/obf/o;)V
    .registers 3

    .prologue
    .line 287
    monitor-enter p0

    if-nez p1, :cond_8

    .line 288
    const/4 v0, 0x0

    :try_start_4
    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/as;->f:Ljava/lang/ref/WeakReference;
    :try_end_6
    .catchall {:try_start_4 .. :try_end_6} :catchall_10

    .line 292
    :goto_6
    monitor-exit p0

    return-void

    .line 291
    :cond_8
    :try_start_8
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/as;->f:Ljava/lang/ref/WeakReference;
    :try_end_f
    .catchall {:try_start_8 .. :try_end_f} :catchall_10

    goto :goto_6

    .line 287
    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public b()I
    .registers 2

    .prologue
    .line 61
    iget v0, p0, Lcom/baidu/bdgame/sdk/obf/as;->d:I

    return v0
.end method

.method public declared-synchronized b(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 65
    monitor-enter p0

    :try_start_1
    invoke-direct {p0, p1}, Lcom/baidu/bdgame/sdk/obf/as;->h(Landroid/content/Context;)V
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_6

    .line 66
    monitor-exit p0

    return-void

    .line 65
    :catchall_6
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public b(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/ai;)V
    .registers 4

    .prologue
    .line 124
    invoke-virtual {p0, p1, p2}, Lcom/baidu/bdgame/sdk/obf/as;->c(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/ai;)Z

    move-result v0

    .line 126
    invoke-static {p1, v0}, Lcom/baidu/bdgame/sdk/obf/as;->a(Landroid/content/Context;Z)V

    .line 129
    invoke-virtual {p2}, Lcom/baidu/bdgame/sdk/obf/ai;->h()Lcom/baidu/bdgame/sdk/obf/s;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/s;->a()I

    move-result v0

    invoke-static {p1, v0}, Lcom/baidu/bdgame/sdk/obf/lg;->a(Landroid/content/Context;I)V

    .line 130
    return-void
.end method

.method public b(Landroid/content/Context;I)Z
    .registers 4

    .prologue
    .line 274
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/as;->e:Lcom/baidu/bdgame/sdk/obf/bt;

    invoke-virtual {v0, p1, p2}, Lcom/baidu/bdgame/sdk/obf/bt;->b(Landroid/content/Context;I)Z

    move-result v0

    return v0
.end method

.method public declared-synchronized c(Landroid/content/Context;)V
    .registers 4

    .prologue
    .line 200
    monitor-enter p0

    :try_start_1
    invoke-static {p1}, Lcom/baidu/bdgame/sdk/obf/jz;->a(Landroid/content/Context;)V

    .line 202
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/kd;->a()Lcom/baidu/bdgame/sdk/obf/kd;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/kd;->a(Lcom/baidu/bdgame/sdk/obf/kf;)V

    .line 204
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/as;->c:Lcom/baidu/bdgame/sdk/obf/ai;

    if-eqz v0, :cond_13

    .line 205
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/as;->c:Lcom/baidu/bdgame/sdk/obf/ai;
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_15

    .line 207
    :cond_13
    monitor-exit p0

    return-void

    .line 200
    :catchall_15
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized c()Z
    .registers 2

    .prologue
    .line 191
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/as;->c:Lcom/baidu/bdgame/sdk/obf/ai;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_a

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_6
    monitor-exit p0

    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_6

    :catchall_a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public c(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/ai;)Z
    .registers 7

    .prologue
    .line 133
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/as;->e:Lcom/baidu/bdgame/sdk/obf/bt;

    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/kg;->a()J

    move-result-wide v2

    invoke-virtual {v0, p1, p2, v2, v3}, Lcom/baidu/bdgame/sdk/obf/bt;->a(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/ai;J)Z

    move-result v0

    return v0
.end method

.method public declared-synchronized d()Lcom/baidu/bdgame/sdk/obf/ai;
    .registers 2

    .prologue
    .line 195
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/as;->c:Lcom/baidu/bdgame/sdk/obf/ai;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized d(Landroid/content/Context;)Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 221
    monitor-enter p0

    const/4 v1, 0x0

    :try_start_3
    invoke-static {p1, v1}, Lcom/baidu/bdgame/sdk/obf/as;->a(Landroid/content/Context;Z)V

    .line 222
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/as;->c:Lcom/baidu/bdgame/sdk/obf/ai;
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_1a

    if-nez v1, :cond_c

    .line 230
    :goto_a
    monitor-exit p0

    return v0

    .line 226
    :cond_c
    :try_start_c
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/as;->c:Lcom/baidu/bdgame/sdk/obf/ai;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/ai;->g()Ljava/lang/String;

    move-result-object v0

    .line 227
    invoke-static {p1, v0}, Lcom/baidu/bdgame/sdk/obf/as;->c(Landroid/content/Context;Ljava/lang/String;)V

    .line 229
    invoke-direct {p0, p1}, Lcom/baidu/bdgame/sdk/obf/as;->h(Landroid/content/Context;)V
    :try_end_18
    .catchall {:try_start_c .. :try_end_18} :catchall_1a

    .line 230
    const/4 v0, 0x1

    goto :goto_a

    .line 221
    :catchall_1a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized e()Ljava/lang/String;
    .registers 2

    .prologue
    .line 210
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/as;->c:Lcom/baidu/bdgame/sdk/obf/ai;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_f

    if-nez v0, :cond_8

    .line 211
    const/4 v0, 0x0

    .line 213
    :goto_6
    monitor-exit p0

    return-object v0

    :cond_8
    :try_start_8
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/as;->c:Lcom/baidu/bdgame/sdk/obf/ai;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/ai;->g()Ljava/lang/String;
    :try_end_d
    .catchall {:try_start_8 .. :try_end_d} :catchall_f

    move-result-object v0

    goto :goto_6

    .line 210
    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized e(Landroid/content/Context;)Z
    .registers 3

    .prologue
    .line 239
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/as;->c:Lcom/baidu/bdgame/sdk/obf/ai;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_d

    if-nez v0, :cond_8

    .line 240
    const/4 v0, 0x0

    .line 243
    :goto_6
    monitor-exit p0

    return v0

    .line 242
    :cond_8
    const/4 v0, 0x0

    :try_start_9
    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/as;->c:Lcom/baidu/bdgame/sdk/obf/ai;
    :try_end_b
    .catchall {:try_start_9 .. :try_end_b} :catchall_d

    .line 243
    const/4 v0, 0x1

    goto :goto_6

    .line 239
    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public f(Landroid/content/Context;)Lcom/baidu/bdgame/sdk/obf/r;
    .registers 3

    .prologue
    .line 254
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/as;->e:Lcom/baidu/bdgame/sdk/obf/bt;

    invoke-virtual {v0, p1}, Lcom/baidu/bdgame/sdk/obf/bt;->b(Landroid/content/Context;)Lcom/baidu/bdgame/sdk/obf/r;

    move-result-object v0

    return-object v0
.end method

.method public g(Landroid/content/Context;)Lcom/baidu/bdgame/sdk/obf/r;
    .registers 3

    .prologue
    .line 258
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/as;->e:Lcom/baidu/bdgame/sdk/obf/bt;

    invoke-virtual {v0, p1}, Lcom/baidu/bdgame/sdk/obf/bt;->c(Landroid/content/Context;)Lcom/baidu/bdgame/sdk/obf/r;

    move-result-object v0

    return-object v0
.end method
