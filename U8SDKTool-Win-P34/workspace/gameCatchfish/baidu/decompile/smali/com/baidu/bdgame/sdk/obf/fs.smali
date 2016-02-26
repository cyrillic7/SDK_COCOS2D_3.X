.class public Lcom/baidu/bdgame/sdk/obf/fs;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcom/baidu/bdgame/sdk/obf/it;

.field private b:Lcom/baidu/bdgame/sdk/obf/fq;

.field private c:Lcom/baidu/bdgame/sdk/obf/jd;

.field private d:Lcom/baidu/bdgame/sdk/obf/dm;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/baidu/bdgame/sdk/obf/dm",
            "<",
            "Lcom/baidu/bdgame/sdk/obf/gj;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lcom/baidu/bdgame/sdk/obf/je;

.field private f:Lcom/baidu/bdgame/sdk/obf/iy;

.field private g:Lcom/baidu/bdgame/sdk/obf/iz;

.field private h:Lcom/baidu/bdgame/sdk/obf/fr;

.field private i:Lcom/baidu/bdgame/sdk/obf/gp;

.field private j:Lcom/baidu/bdgame/sdk/obf/gn;

.field private k:Lcom/baidu/bdgame/sdk/obf/go;


# direct methods
.method public constructor <init>(Lcom/baidu/bdgame/sdk/obf/it;Lcom/baidu/bdgame/sdk/obf/fr;)V
    .registers 5

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/fs$1;

    invoke-direct {v0, p0}, Lcom/baidu/bdgame/sdk/obf/fs$1;-><init>(Lcom/baidu/bdgame/sdk/obf/fs;)V

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fs;->j:Lcom/baidu/bdgame/sdk/obf/gn;

    .line 63
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/fs$2;

    invoke-direct {v0, p0}, Lcom/baidu/bdgame/sdk/obf/fs$2;-><init>(Lcom/baidu/bdgame/sdk/obf/fs;)V

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fs;->k:Lcom/baidu/bdgame/sdk/obf/go;

    .line 42
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/fs;->a:Lcom/baidu/bdgame/sdk/obf/it;

    .line 43
    iput-object p2, p0, Lcom/baidu/bdgame/sdk/obf/fs;->h:Lcom/baidu/bdgame/sdk/obf/fr;

    .line 44
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/fq;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/fs;->a:Lcom/baidu/bdgame/sdk/obf/it;

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/it;->l()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/baidu/bdgame/sdk/obf/fq;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fs;->b:Lcom/baidu/bdgame/sdk/obf/fq;

    .line 46
    return-void
.end method

.method static synthetic a(Lcom/baidu/bdgame/sdk/obf/fs;)Lcom/baidu/bdgame/sdk/obf/fq;
    .registers 2

    .prologue
    .line 27
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fs;->b:Lcom/baidu/bdgame/sdk/obf/fq;

    return-object v0
.end method

.method static synthetic a(Lcom/baidu/bdgame/sdk/obf/fs;Lcom/baidu/bdgame/sdk/obf/ig;)V
    .registers 2

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/baidu/bdgame/sdk/obf/fs;->b(Lcom/baidu/bdgame/sdk/obf/ig;)V

    return-void
.end method

.method static synthetic a(Lcom/baidu/bdgame/sdk/obf/fs;Lcom/baidu/bdgame/sdk/obf/ig;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Lcom/baidu/bdgame/sdk/obf/fs;->a(Lcom/baidu/bdgame/sdk/obf/ig;Ljava/lang/String;)V

    return-void
.end method

.method private a(Lcom/baidu/bdgame/sdk/obf/ig;Ljava/lang/String;)V
    .registers 12

    .prologue
    .line 133
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fs;->a:Lcom/baidu/bdgame/sdk/obf/it;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/it;->N()V

    .line 134
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fs;->a:Lcom/baidu/bdgame/sdk/obf/it;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/it;->k()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/fs;->d:Lcom/baidu/bdgame/sdk/obf/dm;

    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/fs;->g:Lcom/baidu/bdgame/sdk/obf/iz;

    iget-object v5, p0, Lcom/baidu/bdgame/sdk/obf/fs;->e:Lcom/baidu/bdgame/sdk/obf/je;

    iget-object v6, p0, Lcom/baidu/bdgame/sdk/obf/fs;->f:Lcom/baidu/bdgame/sdk/obf/iy;

    iget-object v7, p0, Lcom/baidu/bdgame/sdk/obf/fs;->c:Lcom/baidu/bdgame/sdk/obf/jd;

    new-instance v8, Lcom/baidu/bdgame/sdk/obf/fs$4;

    invoke-direct {v8, p0}, Lcom/baidu/bdgame/sdk/obf/fs$4;-><init>(Lcom/baidu/bdgame/sdk/obf/fs;)V

    move-object v3, p1

    move-object v4, p2

    invoke-static/range {v0 .. v8}, Lcom/baidu/bdgame/sdk/obf/bm;->b(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/dm;Lcom/baidu/bdgame/sdk/obf/iz;Lcom/baidu/bdgame/sdk/obf/ig;Ljava/lang/String;Lcom/baidu/bdgame/sdk/obf/je;Lcom/baidu/bdgame/sdk/obf/iy;Lcom/baidu/bdgame/sdk/obf/jd;Lcom/baidu/bdgame/sdk/obf/n;)Z

    move-result v0

    .line 163
    if-nez v0, :cond_30

    .line 164
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fs;->a:Lcom/baidu/bdgame/sdk/obf/it;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/it;->O()V

    .line 165
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fs;->a:Lcom/baidu/bdgame/sdk/obf/it;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/it;->k()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/jf;->f(Landroid/content/Context;)V

    .line 167
    :cond_30
    return-void
.end method

.method static synthetic b(Lcom/baidu/bdgame/sdk/obf/fs;)Lcom/baidu/bdgame/sdk/obf/it;
    .registers 2

    .prologue
    .line 27
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fs;->a:Lcom/baidu/bdgame/sdk/obf/it;

    return-object v0
.end method

.method private b(Lcom/baidu/bdgame/sdk/obf/ig;)V
    .registers 6

    .prologue
    .line 103
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fs;->a:Lcom/baidu/bdgame/sdk/obf/it;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/it;->k()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/fs;->d:Lcom/baidu/bdgame/sdk/obf/dm;

    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/fs;->c:Lcom/baidu/bdgame/sdk/obf/jd;

    new-instance v3, Lcom/baidu/bdgame/sdk/obf/fs$3;

    invoke-direct {v3, p0, p1}, Lcom/baidu/bdgame/sdk/obf/fs$3;-><init>(Lcom/baidu/bdgame/sdk/obf/fs;Lcom/baidu/bdgame/sdk/obf/ig;)V

    invoke-static {v0, p1, v1, v2, v3}, Lcom/baidu/bdgame/sdk/obf/bm;->b(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/ig;Lcom/baidu/bdgame/sdk/obf/dm;Lcom/baidu/bdgame/sdk/obf/jd;Lcom/baidu/bdgame/sdk/obf/n;)Z

    move-result v0

    .line 119
    if-nez v0, :cond_23

    .line 120
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fs;->b:Lcom/baidu/bdgame/sdk/obf/fq;

    invoke-virtual {v0, p1}, Lcom/baidu/bdgame/sdk/obf/fq;->c(Lcom/baidu/bdgame/sdk/obf/ig;)V

    .line 121
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fs;->a:Lcom/baidu/bdgame/sdk/obf/it;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/it;->k()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/jf;->f(Landroid/content/Context;)V

    .line 123
    :cond_23
    return-void
.end method

.method static synthetic c(Lcom/baidu/bdgame/sdk/obf/fs;)Lcom/baidu/bdgame/sdk/obf/fr;
    .registers 2

    .prologue
    .line 27
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fs;->h:Lcom/baidu/bdgame/sdk/obf/fr;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/baidu/bdgame/sdk/obf/dm;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/baidu/bdgame/sdk/obf/dm",
            "<",
            "Lcom/baidu/bdgame/sdk/obf/gj;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 182
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/fs;->d:Lcom/baidu/bdgame/sdk/obf/dm;

    .line 183
    return-void
.end method

.method public a(Lcom/baidu/bdgame/sdk/obf/gp;)V
    .registers 2

    .prologue
    .line 52
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/fs;->i:Lcom/baidu/bdgame/sdk/obf/gp;

    .line 53
    return-void
.end method

.method public a(Lcom/baidu/bdgame/sdk/obf/ig;)V
    .registers 6

    .prologue
    .line 78
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fs;->b:Lcom/baidu/bdgame/sdk/obf/fq;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/fs;->i:Lcom/baidu/bdgame/sdk/obf/gp;

    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/fs;->j:Lcom/baidu/bdgame/sdk/obf/gn;

    iget-object v3, p0, Lcom/baidu/bdgame/sdk/obf/fs;->k:Lcom/baidu/bdgame/sdk/obf/go;

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/baidu/bdgame/sdk/obf/fq;->a(Lcom/baidu/bdgame/sdk/obf/ig;Lcom/baidu/bdgame/sdk/obf/gp;Lcom/baidu/bdgame/sdk/obf/gn;Lcom/baidu/bdgame/sdk/obf/go;)V

    .line 80
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fs;->b:Lcom/baidu/bdgame/sdk/obf/fq;

    invoke-virtual {v0, p1}, Lcom/baidu/bdgame/sdk/obf/fq;->a(Lcom/baidu/bdgame/sdk/obf/ig;)V

    .line 81
    return-void
.end method

.method public a(Lcom/baidu/bdgame/sdk/obf/ig;Ljava/lang/String;I)V
    .registers 11

    .prologue
    .line 92
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/fs;->b:Lcom/baidu/bdgame/sdk/obf/fq;

    iget-object v4, p0, Lcom/baidu/bdgame/sdk/obf/fs;->i:Lcom/baidu/bdgame/sdk/obf/gp;

    iget-object v5, p0, Lcom/baidu/bdgame/sdk/obf/fs;->j:Lcom/baidu/bdgame/sdk/obf/gn;

    iget-object v6, p0, Lcom/baidu/bdgame/sdk/obf/fs;->k:Lcom/baidu/bdgame/sdk/obf/go;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v6}, Lcom/baidu/bdgame/sdk/obf/fq;->a(Lcom/baidu/bdgame/sdk/obf/ig;Ljava/lang/String;ILcom/baidu/bdgame/sdk/obf/gp;Lcom/baidu/bdgame/sdk/obf/gn;Lcom/baidu/bdgame/sdk/obf/go;)V

    .line 94
    return-void
.end method

.method public a(Lcom/baidu/bdgame/sdk/obf/iy;)V
    .registers 2

    .prologue
    .line 178
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/fs;->f:Lcom/baidu/bdgame/sdk/obf/iy;

    .line 179
    return-void
.end method

.method public a(Lcom/baidu/bdgame/sdk/obf/iz;)V
    .registers 2

    .prologue
    .line 186
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/fs;->g:Lcom/baidu/bdgame/sdk/obf/iz;

    .line 187
    return-void
.end method

.method public a(Lcom/baidu/bdgame/sdk/obf/jd;)V
    .registers 2

    .prologue
    .line 170
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/fs;->c:Lcom/baidu/bdgame/sdk/obf/jd;

    .line 171
    return-void
.end method

.method public a(Lcom/baidu/bdgame/sdk/obf/je;)V
    .registers 2

    .prologue
    .line 174
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/fs;->e:Lcom/baidu/bdgame/sdk/obf/je;

    .line 175
    return-void
.end method
