.class Lcom/baidu/bdgame/sdk/obf/jj$a;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/bdgame/sdk/obf/jj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# static fields
.field private static final a:J = 0x7d0L

.field private static final b:I = 0x2


# instance fields
.field private c:Lcom/baidu/bdgame/sdk/obf/jj;

.field private d:Ljava/lang/String;

.field private e:J

.field private f:J


# direct methods
.method public constructor <init>(Lcom/baidu/bdgame/sdk/obf/jj;Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 204
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 201
    const-wide/16 v0, 0x7d0

    iput-wide v0, p0, Lcom/baidu/bdgame/sdk/obf/jj$a;->e:J

    .line 205
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/jj$a;->c:Lcom/baidu/bdgame/sdk/obf/jj;

    .line 206
    iput-object p2, p0, Lcom/baidu/bdgame/sdk/obf/jj$a;->d:Ljava/lang/String;

    .line 207
    return-void
.end method

.method private a(ILjava/lang/String;Lcom/baidu/bdgame/sdk/obf/ho;)V
    .registers 11

    .prologue
    const/4 v6, 0x0

    .line 239
    if-nez p1, :cond_5

    if-nez p3, :cond_b

    .line 240
    :cond_5
    sget-object v0, Lcom/baidu/bdgame/sdk/obf/jn;->c:Lcom/baidu/bdgame/sdk/obf/jn;

    invoke-direct {p0, v0, v6, v6}, Lcom/baidu/bdgame/sdk/obf/jj$a;->a(Lcom/baidu/bdgame/sdk/obf/jn;Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    :goto_a
    return-void

    .line 242
    :cond_b
    invoke-virtual {p3}, Lcom/baidu/bdgame/sdk/obf/ho;->d()I

    move-result v0

    .line 243
    if-nez v0, :cond_61

    .line 244
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/jj$a;->c:Lcom/baidu/bdgame/sdk/obf/jj;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/jj;->c(Lcom/baidu/bdgame/sdk/obf/jj;)J

    move-result-wide v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/baidu/bdgame/sdk/obf/jj$a;->f:J

    sub-long/2addr v2, v4

    sub-long/2addr v0, v2

    .line 245
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "remainingTime:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/baidu/bdgame/sdk/obf/la;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gtz v2, :cond_4d

    .line 247
    sget-object v0, Lcom/baidu/bdgame/sdk/obf/jn;->c:Lcom/baidu/bdgame/sdk/obf/jn;

    invoke-virtual {p3}, Lcom/baidu/bdgame/sdk/obf/ho;->g()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v6, v1}, Lcom/baidu/bdgame/sdk/obf/jj$a;->a(Lcom/baidu/bdgame/sdk/obf/jn;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a

    .line 249
    :cond_4d
    iget-wide v2, p0, Lcom/baidu/bdgame/sdk/obf/jj$a;->e:J

    cmp-long v2, v0, v2

    if-lez v2, :cond_55

    iget-wide v0, p0, Lcom/baidu/bdgame/sdk/obf/jj$a;->e:J

    .line 250
    :cond_55
    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0, v1}, Lcom/baidu/bdgame/sdk/obf/jj$a;->sendEmptyMessageDelayed(IJ)Z

    .line 251
    iget-wide v0, p0, Lcom/baidu/bdgame/sdk/obf/jj$a;->e:J

    const-wide/16 v2, 0x2

    mul-long/2addr v0, v2

    iput-wide v0, p0, Lcom/baidu/bdgame/sdk/obf/jj$a;->e:J

    goto :goto_a

    .line 253
    :cond_61
    const/4 v1, 0x1

    if-ne v0, v1, :cond_72

    .line 254
    sget-object v0, Lcom/baidu/bdgame/sdk/obf/jn;->a:Lcom/baidu/bdgame/sdk/obf/jn;

    invoke-virtual {p3}, Lcom/baidu/bdgame/sdk/obf/ho;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3}, Lcom/baidu/bdgame/sdk/obf/ho;->g()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/baidu/bdgame/sdk/obf/jj$a;->a(Lcom/baidu/bdgame/sdk/obf/jn;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a

    .line 256
    :cond_72
    sget-object v0, Lcom/baidu/bdgame/sdk/obf/jn;->b:Lcom/baidu/bdgame/sdk/obf/jn;

    invoke-virtual {p3}, Lcom/baidu/bdgame/sdk/obf/ho;->f()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1, v6}, Lcom/baidu/bdgame/sdk/obf/jj$a;->a(Lcom/baidu/bdgame/sdk/obf/jn;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a
.end method

.method static synthetic a(Lcom/baidu/bdgame/sdk/obf/jj$a;ILjava/lang/String;Lcom/baidu/bdgame/sdk/obf/ho;)V
    .registers 4

    .prologue
    .line 192
    invoke-direct {p0, p1, p2, p3}, Lcom/baidu/bdgame/sdk/obf/jj$a;->a(ILjava/lang/String;Lcom/baidu/bdgame/sdk/obf/ho;)V

    return-void
.end method

.method private a(Lcom/baidu/bdgame/sdk/obf/jn;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 262
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/jj$a;->c:Lcom/baidu/bdgame/sdk/obf/jj;

    invoke-static {v0, p1, p2, p3}, Lcom/baidu/bdgame/sdk/obf/jj;->a(Lcom/baidu/bdgame/sdk/obf/jj;Lcom/baidu/bdgame/sdk/obf/jn;Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/jj$a;->c:Lcom/baidu/bdgame/sdk/obf/jj;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/jj;->b(Lcom/baidu/bdgame/sdk/obf/jj;)Lcom/baidu/bdgame/sdk/obf/lu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/lu;->b()V

    .line 264
    return-void
.end method


# virtual methods
.method public a()V
    .registers 4

    .prologue
    .line 231
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/jj$a;->c:Lcom/baidu/bdgame/sdk/obf/jj;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/jj;->b(Lcom/baidu/bdgame/sdk/obf/jj;)Lcom/baidu/bdgame/sdk/obf/lu;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/jj$a;->c:Lcom/baidu/bdgame/sdk/obf/jj;

    invoke-static {v1}, Lcom/baidu/bdgame/sdk/obf/jj;->a(Lcom/baidu/bdgame/sdk/obf/jj;)Lcom/baidu/bdgame/sdk/obf/ce;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/ce;->b()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "bdp_dialog_loading_pay_result"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/kq;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/lu;->a(I)V

    .line 232
    const-wide/16 v0, 0x7d0

    iput-wide v0, p0, Lcom/baidu/bdgame/sdk/obf/jj$a;->e:J

    .line 233
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/baidu/bdgame/sdk/obf/jj$a;->f:J

    .line 234
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/baidu/bdgame/sdk/obf/jj$a;->sendEmptyMessage(I)Z

    .line 235
    return-void
.end method

.method public b()V
    .registers 2

    .prologue
    .line 268
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/baidu/bdgame/sdk/obf/jj$a;->removeMessages(I)V

    .line 269
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v3, 0x0

    .line 211
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/jj$a$1;

    invoke-direct {v0, p0}, Lcom/baidu/bdgame/sdk/obf/jj$a$1;-><init>(Lcom/baidu/bdgame/sdk/obf/jj$a;)V

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/m;->a(Lcom/baidu/bdgame/sdk/obf/n;)Lcom/baidu/bdgame/sdk/obf/m;

    move-result-object v0

    .line 219
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/jj$a;->c:Lcom/baidu/bdgame/sdk/obf/jj;

    invoke-static {v1}, Lcom/baidu/bdgame/sdk/obf/jj;->a(Lcom/baidu/bdgame/sdk/obf/jj;)Lcom/baidu/bdgame/sdk/obf/ce;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/ce;->b()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/jj$a;->d:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lcom/baidu/bdgame/sdk/obf/bm;->d(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/bdgame/sdk/obf/n;)Z

    move-result v1

    .line 220
    if-nez v1, :cond_22

    .line 221
    sget-object v0, Lcom/baidu/bdgame/sdk/obf/jn;->c:Lcom/baidu/bdgame/sdk/obf/jn;

    invoke-direct {p0, v0, v3, v3}, Lcom/baidu/bdgame/sdk/obf/jj$a;->a(Lcom/baidu/bdgame/sdk/obf/jn;Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    :goto_21
    return-void

    .line 223
    :cond_22
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/jj$a;->c:Lcom/baidu/bdgame/sdk/obf/jj;

    invoke-static {v1}, Lcom/baidu/bdgame/sdk/obf/jj;->a(Lcom/baidu/bdgame/sdk/obf/jj;)Lcom/baidu/bdgame/sdk/obf/ce;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/baidu/bdgame/sdk/obf/ce;->a(Lcom/baidu/bdgame/sdk/obf/m;)V

    goto :goto_21
.end method
