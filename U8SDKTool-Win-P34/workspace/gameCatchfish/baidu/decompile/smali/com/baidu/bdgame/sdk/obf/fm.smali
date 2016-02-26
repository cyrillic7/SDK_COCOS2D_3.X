.class public Lcom/baidu/bdgame/sdk/obf/fm;
.super Lcom/baidu/bdgame/sdk/obf/ek;
.source "SourceFile"


# instance fields
.field private k:Lcom/baidu/bdgame/sdk/obf/cn;

.field private l:Lcom/baidu/bdgame/sdk/obf/ie;


# direct methods
.method public constructor <init>(Lcom/baidu/bdgame/sdk/obf/cn;)V
    .registers 3

    .prologue
    .line 28
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/baidu/bdgame/sdk/obf/ek;-><init>(Ljava/lang/String;)V

    .line 29
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/fm;->k:Lcom/baidu/bdgame/sdk/obf/cn;

    .line 30
    return-void
.end method

.method static synthetic a(Lcom/baidu/bdgame/sdk/obf/fm;)Lcom/baidu/bdgame/sdk/obf/cn;
    .registers 2

    .prologue
    .line 21
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fm;->k:Lcom/baidu/bdgame/sdk/obf/cn;

    return-object v0
.end method

.method static synthetic a(Lcom/baidu/bdgame/sdk/obf/fm;Lcom/baidu/bdgame/sdk/obf/ie;)Lcom/baidu/bdgame/sdk/obf/ie;
    .registers 2

    .prologue
    .line 21
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/fm;->l:Lcom/baidu/bdgame/sdk/obf/ie;

    return-object p1
.end method

.method static synthetic a(Lcom/baidu/bdgame/sdk/obf/fm;ILjava/lang/String;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 21
    invoke-virtual {p0, p1, p2, p3}, Lcom/baidu/bdgame/sdk/obf/fm;->b(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lcom/baidu/bdgame/sdk/obf/fm;)Lcom/baidu/bdgame/sdk/obf/ie;
    .registers 2

    .prologue
    .line 21
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fm;->l:Lcom/baidu/bdgame/sdk/obf/ie;

    return-object v0
.end method

.method static synthetic b(Lcom/baidu/bdgame/sdk/obf/fm;ILjava/lang/String;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 21
    invoke-virtual {p0, p1, p2, p3}, Lcom/baidu/bdgame/sdk/obf/fm;->b(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(I)Lcom/baidu/bdgame/sdk/obf/jn;
    .registers 3

    .prologue
    .line 67
    if-nez p1, :cond_5

    sget-object v0, Lcom/baidu/bdgame/sdk/obf/jn;->a:Lcom/baidu/bdgame/sdk/obf/jn;

    :goto_4
    return-object v0

    :cond_5
    sget-object v0, Lcom/baidu/bdgame/sdk/obf/jn;->b:Lcom/baidu/bdgame/sdk/obf/jn;

    goto :goto_4
.end method

.method public a()V
    .registers 6

    .prologue
    .line 33
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fm;->k:Lcom/baidu/bdgame/sdk/obf/cn;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/cn;->N()V

    .line 35
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/fm;->c:Lcom/baidu/bdgame/sdk/obf/jd;

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/jf;->a(Ljava/lang/Class;Lcom/baidu/bdgame/sdk/obf/jd;)V

    .line 36
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fm;->k:Lcom/baidu/bdgame/sdk/obf/cn;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/cn;->k()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/fm;->f:Lcom/baidu/bdgame/sdk/obf/je;

    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/fm;->g:Lcom/baidu/bdgame/sdk/obf/iy;

    iget-object v3, p0, Lcom/baidu/bdgame/sdk/obf/fm;->c:Lcom/baidu/bdgame/sdk/obf/jd;

    new-instance v4, Lcom/baidu/bdgame/sdk/obf/fm$1;

    invoke-direct {v4, p0}, Lcom/baidu/bdgame/sdk/obf/fm$1;-><init>(Lcom/baidu/bdgame/sdk/obf/fm;)V

    invoke-static {v0, v1, v2, v3, v4}, Lcom/baidu/bdgame/sdk/obf/bm;->a(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/je;Lcom/baidu/bdgame/sdk/obf/iy;Lcom/baidu/bdgame/sdk/obf/jd;Lcom/baidu/bdgame/sdk/obf/n;)Z

    move-result v0

    .line 60
    if-nez v0, :cond_33

    .line 61
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fm;->k:Lcom/baidu/bdgame/sdk/obf/cn;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/cn;->O()V

    .line 62
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fm;->k:Lcom/baidu/bdgame/sdk/obf/cn;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/cn;->k()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/jf;->f(Landroid/content/Context;)V

    .line 64
    :cond_33
    return-void
.end method

.method protected b()Z
    .registers 2

    .prologue
    .line 73
    const/4 v0, 0x1

    return v0
.end method
