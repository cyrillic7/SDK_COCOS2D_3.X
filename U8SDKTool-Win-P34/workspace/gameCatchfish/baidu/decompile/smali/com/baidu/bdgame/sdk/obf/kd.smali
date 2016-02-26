.class public final Lcom/baidu/bdgame/sdk/obf/kd;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/bdgame/sdk/obf/kd$1;,
        Lcom/baidu/bdgame/sdk/obf/kd$a;
    }
.end annotation


# static fields
.field static final a:S = 0x1s


# instance fields
.field private b:I

.field private c:Ljava/lang/String;

.field private d:Lcom/baidu/bdgame/sdk/obf/js;

.field private e:Lcom/baidu/bdgame/sdk/obf/kf;

.field private f:Lcom/baidu/bdgame/sdk/obf/cf;

.field private g:Ljava/lang/String;

.field private h:Lcom/baidu/bdgame/sdk/obf/ke;

.field private i:Lcom/baidu/bdgame/sdk/obf/as;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const-string v0, ""

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/kd;->g:Ljava/lang/String;

    .line 41
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/js;

    invoke-direct {v0}, Lcom/baidu/bdgame/sdk/obf/js;-><init>()V

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/kd;->d:Lcom/baidu/bdgame/sdk/obf/js;

    .line 42
    return-void
.end method

.method synthetic constructor <init>(Lcom/baidu/bdgame/sdk/obf/kd$1;)V
    .registers 2

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/kd;-><init>()V

    return-void
.end method

.method public static a()Lcom/baidu/bdgame/sdk/obf/kd;
    .registers 1

    .prologue
    .line 49
    sget-object v0, Lcom/baidu/bdgame/sdk/obf/kd$a;->a:Lcom/baidu/bdgame/sdk/obf/kd;

    return-object v0
.end method

.method private g(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 182
    invoke-static {p1}, Lcom/baidu/bdgame/sdk/obf/jz;->a(Landroid/content/Context;)V

    .line 184
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/baidu/bdgame/sdk/obf/kd;->a(Lcom/baidu/bdgame/sdk/obf/kf;)V

    .line 185
    invoke-direct {p0, p1}, Lcom/baidu/bdgame/sdk/obf/kd;->h(Landroid/content/Context;)V

    .line 186
    return-void
.end method

.method private h(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 227
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/kd;->i:Lcom/baidu/bdgame/sdk/obf/as;

    invoke-virtual {v0, p1}, Lcom/baidu/bdgame/sdk/obf/as;->b(Landroid/content/Context;)V

    .line 228
    return-void
.end method


# virtual methods
.method a(Landroid/content/Context;I)Lcom/baidu/bdgame/sdk/obf/ka;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)",
            "Lcom/baidu/bdgame/sdk/obf/ka",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 109
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/jt;

    invoke-direct {v0}, Lcom/baidu/bdgame/sdk/obf/jt;-><init>()V

    .line 110
    invoke-virtual {v0, p1, p2}, Lcom/baidu/bdgame/sdk/obf/jt;->a(Landroid/content/Context;I)Lcom/baidu/bdgame/sdk/obf/ka;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 105
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/kd;->d:Lcom/baidu/bdgame/sdk/obf/js;

    invoke-virtual {v0, p1}, Lcom/baidu/bdgame/sdk/obf/js;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/content/Context;ILjava/lang/String;Lcom/baidu/bdgame/sdk/obf/as;)V
    .registers 7

    .prologue
    .line 56
    iput p2, p0, Lcom/baidu/bdgame/sdk/obf/kd;->b:I

    .line 57
    iput-object p3, p0, Lcom/baidu/bdgame/sdk/obf/kd;->c:Ljava/lang/String;

    .line 59
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 60
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "BaiduPlatformSDK: invalid AppKey"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 63
    :cond_12
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/ke;

    invoke-direct {v0}, Lcom/baidu/bdgame/sdk/obf/ke;-><init>()V

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/kd;->h:Lcom/baidu/bdgame/sdk/obf/ke;

    .line 65
    iput-object p4, p0, Lcom/baidu/bdgame/sdk/obf/kd;->i:Lcom/baidu/bdgame/sdk/obf/as;

    .line 66
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/kd;->i:Lcom/baidu/bdgame/sdk/obf/as;

    invoke-virtual {v0, p1}, Lcom/baidu/bdgame/sdk/obf/as;->a(Landroid/content/Context;)V

    .line 68
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/kd;->d:Lcom/baidu/bdgame/sdk/obf/js;

    invoke-virtual {v0, p1}, Lcom/baidu/bdgame/sdk/obf/js;->a(Landroid/content/Context;)V

    .line 70
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/baidu/bdgame/sdk/obf/kd;->a(Lcom/baidu/bdgame/sdk/obf/kf;)V

    .line 71
    return-void
.end method

.method public a(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/ai;)V
    .registers 7

    .prologue
    .line 231
    if-eqz p2, :cond_25

    .line 232
    const-class v0, Lcom/baidu/bdgame/sdk/obf/kd;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "start keep alive:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/la;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    invoke-static {p1}, Lcom/baidu/bdgame/sdk/obf/jz;->b(Landroid/content/Context;)V

    .line 235
    :cond_25
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/kd;->i:Lcom/baidu/bdgame/sdk/obf/as;

    invoke-virtual {v0, p1, p2}, Lcom/baidu/bdgame/sdk/obf/as;->a(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/ai;)V

    .line 236
    return-void
.end method

.method public a(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/kf;)V
    .registers 7

    .prologue
    .line 190
    const-class v0, Lcom/baidu/bdgame/sdk/obf/kd;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "start keep alive:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/la;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    invoke-static {p1}, Lcom/baidu/bdgame/sdk/obf/jz;->b(Landroid/content/Context;)V

    .line 194
    invoke-virtual {p0, p2}, Lcom/baidu/bdgame/sdk/obf/kd;->a(Lcom/baidu/bdgame/sdk/obf/kf;)V

    .line 195
    return-void
.end method

.method public a(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/s;)V
    .registers 7

    .prologue
    .line 161
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/kd;->i:Lcom/baidu/bdgame/sdk/obf/as;

    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/kg;->a()J

    move-result-wide v2

    invoke-virtual {v0, p1, p2, v2, v3}, Lcom/baidu/bdgame/sdk/obf/as;->a(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/s;J)V

    .line 162
    return-void
.end method

.method a(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 114
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/jt;

    invoke-direct {v0}, Lcom/baidu/bdgame/sdk/obf/jt;-><init>()V

    .line 115
    invoke-virtual {v0, p1, p2}, Lcom/baidu/bdgame/sdk/obf/jt;->b(Landroid/content/Context;Ljava/lang/String;)V

    .line 116
    return-void
.end method

.method public declared-synchronized a(Lcom/baidu/bdgame/sdk/obf/cf;)V
    .registers 3

    .prologue
    .line 89
    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/kd;->f:Lcom/baidu/bdgame/sdk/obf/cf;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 90
    monitor-exit p0

    return-void

    .line 89
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Lcom/baidu/bdgame/sdk/obf/kf;)V
    .registers 3

    .prologue
    .line 153
    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/kd;->e:Lcom/baidu/bdgame/sdk/obf/kf;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 154
    monitor-exit p0

    return-void

    .line 153
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b()Lcom/baidu/bdgame/sdk/obf/cf;
    .registers 2

    .prologue
    .line 93
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/kd;->f:Lcom/baidu/bdgame/sdk/obf/cf;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method b(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 124
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/jp;

    invoke-direct {v0}, Lcom/baidu/bdgame/sdk/obf/jp;-><init>()V

    .line 125
    invoke-virtual {v0, p1}, Lcom/baidu/bdgame/sdk/obf/jp;->a(Landroid/content/Context;)V

    .line 126
    return-void
.end method

.method b(Landroid/content/Context;I)V
    .registers 4

    .prologue
    .line 198
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/kd;->i:Lcom/baidu/bdgame/sdk/obf/as;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/as;->c()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 203
    :cond_8
    invoke-direct {p0, p1}, Lcom/baidu/bdgame/sdk/obf/kd;->g(Landroid/content/Context;)V

    .line 204
    return-void
.end method

.method public b(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/ai;)V
    .registers 4

    .prologue
    .line 239
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/kd;->i:Lcom/baidu/bdgame/sdk/obf/as;

    invoke-virtual {v0, p1, p2}, Lcom/baidu/bdgame/sdk/obf/as;->b(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/ai;)V

    .line 240
    return-void
.end method

.method public b(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/s;)V
    .registers 4

    .prologue
    .line 165
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/kd;->i:Lcom/baidu/bdgame/sdk/obf/as;

    invoke-virtual {v0, p1, p2}, Lcom/baidu/bdgame/sdk/obf/as;->a(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/s;)V

    .line 166
    return-void
.end method

.method b(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 119
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/dn;

    invoke-direct {v0}, Lcom/baidu/bdgame/sdk/obf/dn;-><init>()V

    .line 120
    invoke-virtual {v0, p1, p2}, Lcom/baidu/bdgame/sdk/obf/dn;->b(Landroid/content/Context;Ljava/lang/String;)V

    .line 121
    return-void
.end method

.method public c(Landroid/content/Context;)I
    .registers 3

    .prologue
    .line 137
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/kd;->i:Lcom/baidu/bdgame/sdk/obf/as;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/as;->b()I

    move-result v0

    return v0
.end method

.method public declared-synchronized c()Ljava/lang/String;
    .registers 2

    .prologue
    .line 132
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/kd;->g:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method c(Landroid/content/Context;I)V
    .registers 4

    .prologue
    .line 218
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/kd;->i:Lcom/baidu/bdgame/sdk/obf/as;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/as;->c()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 223
    :cond_8
    invoke-direct {p0, p1}, Lcom/baidu/bdgame/sdk/obf/kd;->h(Landroid/content/Context;)V

    .line 224
    return-void
.end method

.method declared-synchronized c(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 129
    monitor-enter p0

    :try_start_1
    iput-object p2, p0, Lcom/baidu/bdgame/sdk/obf/kd;->g:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 130
    monitor-exit p0

    return-void

    .line 129
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public d()Ljava/lang/String;
    .registers 2

    .prologue
    .line 141
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/kd;->c:Ljava/lang/String;

    return-object v0
.end method

.method public d(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 169
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/kd;->i:Lcom/baidu/bdgame/sdk/obf/as;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/as;->d()Lcom/baidu/bdgame/sdk/obf/ai;

    move-result-object v0

    .line 170
    if-nez v0, :cond_8

    .line 175
    :cond_8
    return-void
.end method

.method d(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 247
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/kd;->h:Lcom/baidu/bdgame/sdk/obf/ke;

    invoke-virtual {v0, p1, p2}, Lcom/baidu/bdgame/sdk/obf/ke;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 248
    return-void
.end method

.method e()I
    .registers 2

    .prologue
    .line 145
    iget v0, p0, Lcom/baidu/bdgame/sdk/obf/kd;->b:I

    return v0
.end method

.method e(Landroid/content/Context;)V
    .registers 2

    .prologue
    .line 178
    invoke-direct {p0, p1}, Lcom/baidu/bdgame/sdk/obf/kd;->g(Landroid/content/Context;)V

    .line 179
    return-void
.end method

.method e(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 251
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/kd;->i:Lcom/baidu/bdgame/sdk/obf/as;

    invoke-virtual {v0, p1, p2}, Lcom/baidu/bdgame/sdk/obf/as;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 252
    return-void
.end method

.method public declared-synchronized f()Lcom/baidu/bdgame/sdk/obf/kf;
    .registers 2

    .prologue
    .line 149
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/kd;->e:Lcom/baidu/bdgame/sdk/obf/kf;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public f(Landroid/content/Context;)Ljava/security/interfaces/RSAPublicKey;
    .registers 3

    .prologue
    .line 243
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/kd;->h:Lcom/baidu/bdgame/sdk/obf/ke;

    invoke-virtual {v0, p1}, Lcom/baidu/bdgame/sdk/obf/ke;->a(Landroid/content/Context;)Ljava/security/interfaces/RSAPublicKey;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized g()Z
    .registers 2

    .prologue
    .line 157
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/kd;->e:Lcom/baidu/bdgame/sdk/obf/kf;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_a

    if-nez v0, :cond_8

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
