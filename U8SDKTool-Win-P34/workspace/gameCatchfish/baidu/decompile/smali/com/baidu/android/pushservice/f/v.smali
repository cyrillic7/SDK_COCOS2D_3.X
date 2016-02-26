.class public Lcom/baidu/android/pushservice/f/v;
.super Ljava/lang/Object;


# instance fields
.field private a:I

.field private b:Ljava/lang/String;

.field private c:J

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:I


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/baidu/android/pushservice/f/v;->b:Ljava/lang/String;

    return-object v0
.end method

.method public a(I)V
    .registers 2

    iput p1, p0, Lcom/baidu/android/pushservice/f/v;->a:I

    return-void
.end method

.method public a(J)V
    .registers 4

    iput-wide p1, p0, Lcom/baidu/android/pushservice/f/v;->c:J

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/baidu/android/pushservice/f/v;->b:Ljava/lang/String;

    return-void
.end method

.method public b()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/baidu/android/pushservice/f/v;->j:Ljava/lang/String;

    return-object v0
.end method

.method public b(I)V
    .registers 2

    iput p1, p0, Lcom/baidu/android/pushservice/f/v;->k:I

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/baidu/android/pushservice/f/v;->d:Ljava/lang/String;

    return-void
.end method

.method public c()Lcom/baidu/android/pushservice/f/p;
    .registers 7

    new-instance v0, Lcom/baidu/android/pushservice/f/p;

    iget-object v1, p0, Lcom/baidu/android/pushservice/f/v;->b:Ljava/lang/String;

    iget-wide v2, p0, Lcom/baidu/android/pushservice/f/v;->c:J

    iget-object v4, p0, Lcom/baidu/android/pushservice/f/v;->d:Ljava/lang/String;

    iget-object v5, p0, Lcom/baidu/android/pushservice/f/v;->j:Ljava/lang/String;

    invoke-direct/range {v0 .. v5}, Lcom/baidu/android/pushservice/f/p;-><init>(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/baidu/android/pushservice/f/v;->e:Ljava/lang/String;

    return-void
.end method

.method public d()Lcom/baidu/android/pushservice/f/u;
    .registers 4

    new-instance v0, Lcom/baidu/android/pushservice/f/u;

    invoke-virtual {p0}, Lcom/baidu/android/pushservice/f/v;->c()Lcom/baidu/android/pushservice/f/p;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/baidu/android/pushservice/f/u;-><init>(Lcom/baidu/android/pushservice/f/p;)V

    iget-object v1, p0, Lcom/baidu/android/pushservice/f/v;->e:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_15

    iget-object v1, p0, Lcom/baidu/android/pushservice/f/v;->e:Ljava/lang/String;

    iput-object v1, v0, Lcom/baidu/android/pushservice/f/u;->a:Ljava/lang/String;

    :cond_15
    iget-object v1, p0, Lcom/baidu/android/pushservice/f/v;->f:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_21

    iget-object v1, p0, Lcom/baidu/android/pushservice/f/v;->f:Ljava/lang/String;

    iput-object v1, v0, Lcom/baidu/android/pushservice/f/u;->b:Ljava/lang/String;

    :cond_21
    iget-object v1, p0, Lcom/baidu/android/pushservice/f/v;->g:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2d

    iget-object v1, p0, Lcom/baidu/android/pushservice/f/v;->g:Ljava/lang/String;

    iput-object v1, v0, Lcom/baidu/android/pushservice/f/u;->c:Ljava/lang/String;

    :cond_2d
    iget-object v1, p0, Lcom/baidu/android/pushservice/f/v;->h:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_39

    iget-object v1, p0, Lcom/baidu/android/pushservice/f/v;->h:Ljava/lang/String;

    iput-object v1, v0, Lcom/baidu/android/pushservice/f/u;->d:Ljava/lang/String;

    :cond_39
    iget-object v1, p0, Lcom/baidu/android/pushservice/f/v;->i:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_45

    iget-object v1, p0, Lcom/baidu/android/pushservice/f/v;->i:Ljava/lang/String;

    iput-object v1, v0, Lcom/baidu/android/pushservice/f/u;->e:Ljava/lang/String;

    :cond_45
    iget v1, p0, Lcom/baidu/android/pushservice/f/v;->k:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_4e

    iget v1, p0, Lcom/baidu/android/pushservice/f/v;->k:I

    iput v1, v0, Lcom/baidu/android/pushservice/f/u;->v:I

    :cond_4e
    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/baidu/android/pushservice/f/v;->f:Ljava/lang/String;

    return-void
.end method

.method public e(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/baidu/android/pushservice/f/v;->g:Ljava/lang/String;

    return-void
.end method

.method public f(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/baidu/android/pushservice/f/v;->h:Ljava/lang/String;

    return-void
.end method

.method public g(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/baidu/android/pushservice/f/v;->i:Ljava/lang/String;

    return-void
.end method

.method public h(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/baidu/android/pushservice/f/v;->j:Ljava/lang/String;

    return-void
.end method
