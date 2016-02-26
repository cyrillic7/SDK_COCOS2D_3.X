.class public Lcom/baidu/bdgame/sdk/obf/mk;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/bdgame/sdk/obf/mk$a;,
        Lcom/baidu/bdgame/sdk/obf/mk$b;
    }
.end annotation


# static fields
.field private static final a:I = 0x3


# instance fields
.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/baidu/bdgame/sdk/obf/ml;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcom/baidu/bdgame/sdk/obf/mm;

.field private e:Landroid/content/Context;

.field private f:Z


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 4

    .prologue
    const/4 v1, 0x3

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/mk;->b:Ljava/util/List;

    .line 23
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/mk;->c:Ljava/util/HashSet;

    .line 30
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/bdgame/sdk/obf/mk;->f:Z

    .line 33
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/mk;->e:Landroid/content/Context;

    .line 34
    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/baidu/bdgame/sdk/obf/mk;
    .registers 4

    .prologue
    .line 37
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/mk;

    invoke-direct {v0, p0}, Lcom/baidu/bdgame/sdk/obf/mk;-><init>(Landroid/content/Context;)V

    .line 39
    new-instance v1, Lcom/baidu/bdgame/sdk/obf/mk$3;

    invoke-direct {v1}, Lcom/baidu/bdgame/sdk/obf/mk$3;-><init>()V

    invoke-direct {v0, v1}, Lcom/baidu/bdgame/sdk/obf/mk;->a(Lcom/baidu/bdgame/sdk/obf/mk$b;)Lcom/baidu/bdgame/sdk/obf/mk;

    move-result-object v1

    new-instance v2, Lcom/baidu/bdgame/sdk/obf/mk$2;

    invoke-direct {v2}, Lcom/baidu/bdgame/sdk/obf/mk$2;-><init>()V

    invoke-direct {v1, v2}, Lcom/baidu/bdgame/sdk/obf/mk;->a(Lcom/baidu/bdgame/sdk/obf/mk$b;)Lcom/baidu/bdgame/sdk/obf/mk;

    move-result-object v1

    new-instance v2, Lcom/baidu/bdgame/sdk/obf/mk$1;

    invoke-direct {v2}, Lcom/baidu/bdgame/sdk/obf/mk$1;-><init>()V

    invoke-direct {v1, v2}, Lcom/baidu/bdgame/sdk/obf/mk;->a(Lcom/baidu/bdgame/sdk/obf/mk$b;)Lcom/baidu/bdgame/sdk/obf/mk;

    .line 63
    return-object v0
.end method

.method private a(Lcom/baidu/bdgame/sdk/obf/mk$b;)Lcom/baidu/bdgame/sdk/obf/mk;
    .registers 4

    .prologue
    .line 72
    if-eqz p1, :cond_f

    .line 73
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/mk;->e:Landroid/content/Context;

    invoke-interface {p1, v0}, Lcom/baidu/bdgame/sdk/obf/mk$b;->a(Landroid/content/Context;)Lcom/baidu/bdgame/sdk/obf/ml;

    move-result-object v0

    .line 74
    if-eqz v0, :cond_f

    .line 75
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/mk;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 78
    :cond_f
    return-object p0
.end method

.method static synthetic a(Lcom/baidu/bdgame/sdk/obf/mk;Lorg/json/JSONObject;)V
    .registers 2

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/baidu/bdgame/sdk/obf/mk;->a(Lorg/json/JSONObject;)V

    return-void
.end method

.method private a(Lorg/json/JSONObject;)V
    .registers 3

    .prologue
    .line 151
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/mk;->d:Lcom/baidu/bdgame/sdk/obf/mm;

    if-eqz v0, :cond_9

    .line 152
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/mk;->d:Lcom/baidu/bdgame/sdk/obf/mm;

    invoke-interface {v0, p1}, Lcom/baidu/bdgame/sdk/obf/mm;->a(Lorg/json/JSONObject;)V

    .line 154
    :cond_9
    return-void
.end method

.method static synthetic a(Lcom/baidu/bdgame/sdk/obf/mk;)Z
    .registers 2

    .prologue
    .line 20
    iget-boolean v0, p0, Lcom/baidu/bdgame/sdk/obf/mk;->f:Z

    return v0
.end method

.method static synthetic b(Lcom/baidu/bdgame/sdk/obf/mk;)Ljava/util/HashSet;
    .registers 2

    .prologue
    .line 20
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/mk;->c:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic c(Lcom/baidu/bdgame/sdk/obf/mk;)Ljava/util/List;
    .registers 2

    .prologue
    .line 20
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/mk;->b:Ljava/util/List;

    return-object v0
.end method

.method private c()V
    .registers 2

    .prologue
    .line 145
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/mk;->d:Lcom/baidu/bdgame/sdk/obf/mm;

    if-eqz v0, :cond_9

    .line 146
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/mk;->d:Lcom/baidu/bdgame/sdk/obf/mm;

    invoke-interface {v0}, Lcom/baidu/bdgame/sdk/obf/mm;->a()V

    .line 148
    :cond_9
    return-void
.end method

.method static synthetic d(Lcom/baidu/bdgame/sdk/obf/mk;)V
    .registers 1

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/mk;->c()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 4

    .prologue
    .line 88
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/mk;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_c

    .line 89
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/mk;->c()V

    .line 98
    :cond_b
    return-void

    .line 93
    :cond_c
    const/4 v0, 0x0

    move v1, v0

    :goto_e
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/mk;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_b

    .line 94
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/mk;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/bdgame/sdk/obf/ml;

    .line 95
    new-instance v2, Lcom/baidu/bdgame/sdk/obf/mk$a;

    invoke-direct {v2, p0, v1}, Lcom/baidu/bdgame/sdk/obf/mk$a;-><init>(Lcom/baidu/bdgame/sdk/obf/mk;I)V

    invoke-virtual {v0, v2}, Lcom/baidu/bdgame/sdk/obf/ml;->a(Lcom/baidu/bdgame/sdk/obf/mm;)V

    .line 96
    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/ml;->a()Z

    .line 93
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_e
.end method

.method public a(Lcom/baidu/bdgame/sdk/obf/mm;)V
    .registers 2

    .prologue
    .line 83
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/mk;->d:Lcom/baidu/bdgame/sdk/obf/mm;

    .line 84
    return-void
.end method

.method public b()V
    .registers 3

    .prologue
    .line 102
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/bdgame/sdk/obf/mk;->f:Z

    .line 103
    const/4 v0, 0x0

    move v1, v0

    :goto_5
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/mk;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1c

    .line 104
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/mk;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/bdgame/sdk/obf/ml;

    .line 105
    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/ml;->b()V

    .line 103
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_5

    .line 107
    :cond_1c
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/mk;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 108
    return-void
.end method
