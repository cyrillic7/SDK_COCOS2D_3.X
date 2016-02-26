.class public Lcom/baidu/bdgame/sdk/obf/cl;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:I = 0x1

.field public static final b:I = 0x2

.field public static final c:I = 0x3

.field public static final d:I = 0x4


# instance fields
.field private e:Lcom/baidu/bdgame/sdk/obf/ce;

.field private f:Lcom/baidu/bdgame/sdk/obf/jd;

.field private g:Lcom/baidu/bdgame/sdk/obf/je;

.field private h:Lcom/baidu/bdgame/sdk/obf/iy;

.field private i:Landroid/app/Activity;

.field private j:Lcom/baidu/bdgame/sdk/obf/jg;

.field private k:Lcom/baidu/bdgame/sdk/obf/cn;

.field private l:Lcom/baidu/bdgame/sdk/obf/dl;

.field private m:Lcom/baidu/bdgame/sdk/obf/gx;

.field private n:I


# direct methods
.method public constructor <init>(Lcom/baidu/bdgame/sdk/obf/ce;)V
    .registers 3

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/bdgame/sdk/obf/cl;->n:I

    .line 55
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/cl;->e:Lcom/baidu/bdgame/sdk/obf/ce;

    .line 56
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cl;->e:Lcom/baidu/bdgame/sdk/obf/ce;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/ce;->b()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cl;->i:Landroid/app/Activity;

    .line 57
    return-void
.end method

.method static synthetic a(Lcom/baidu/bdgame/sdk/obf/cl;I)I
    .registers 2

    .prologue
    .line 22
    iput p1, p0, Lcom/baidu/bdgame/sdk/obf/cl;->n:I

    return p1
.end method

.method static synthetic a(Lcom/baidu/bdgame/sdk/obf/cl;Lcom/baidu/bdgame/sdk/obf/gx;)Lcom/baidu/bdgame/sdk/obf/gx;
    .registers 2

    .prologue
    .line 22
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/cl;->m:Lcom/baidu/bdgame/sdk/obf/gx;

    return-object p1
.end method

.method static synthetic a(Lcom/baidu/bdgame/sdk/obf/cl;)V
    .registers 1

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/cl;->d()V

    return-void
.end method

.method static synthetic a(Lcom/baidu/bdgame/sdk/obf/cl;Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/baidu/bdgame/sdk/obf/cl;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 165
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cl;->l:Lcom/baidu/bdgame/sdk/obf/dl;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/dl;->N()V

    .line 166
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cl;->i:Landroid/app/Activity;

    new-instance v1, Lcom/baidu/bdgame/sdk/obf/cl$4;

    invoke-direct {v1, p0}, Lcom/baidu/bdgame/sdk/obf/cl$4;-><init>(Lcom/baidu/bdgame/sdk/obf/cl;)V

    invoke-static {v0, p1, v1}, Lcom/baidu/bdgame/sdk/obf/bm;->a(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/bdgame/sdk/obf/n;)Z

    move-result v0

    .line 184
    if-nez v0, :cond_1c

    .line 185
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cl;->l:Lcom/baidu/bdgame/sdk/obf/dl;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/dl;->O()V

    .line 186
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cl;->i:Landroid/app/Activity;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/jf;->f(Landroid/content/Context;)V

    .line 188
    :cond_1c
    return-void
.end method

.method private b()V
    .registers 4

    .prologue
    .line 71
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/dl;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/cl;->e:Lcom/baidu/bdgame/sdk/obf/ce;

    invoke-direct {v0, v1}, Lcom/baidu/bdgame/sdk/obf/dl;-><init>(Lcom/baidu/bdgame/sdk/obf/ce;)V

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cl;->l:Lcom/baidu/bdgame/sdk/obf/dl;

    .line 73
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cl;->l:Lcom/baidu/bdgame/sdk/obf/dl;

    new-instance v1, Lcom/baidu/bdgame/sdk/obf/cl$1;

    invoke-direct {v1, p0}, Lcom/baidu/bdgame/sdk/obf/cl$1;-><init>(Lcom/baidu/bdgame/sdk/obf/cl;)V

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/dl;->a(Lcom/baidu/bdgame/sdk/obf/ca;)V

    .line 80
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cl;->l:Lcom/baidu/bdgame/sdk/obf/dl;

    new-instance v1, Lcom/baidu/bdgame/sdk/obf/cl$2;

    invoke-direct {v1, p0}, Lcom/baidu/bdgame/sdk/obf/cl$2;-><init>(Lcom/baidu/bdgame/sdk/obf/cl;)V

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/dl;->a(Lcom/baidu/bdgame/sdk/obf/di;)V

    .line 94
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cl;->e:Lcom/baidu/bdgame/sdk/obf/ce;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/cl;->l:Lcom/baidu/bdgame/sdk/obf/dl;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/baidu/bdgame/sdk/obf/ce;->a(Lcom/baidu/bdgame/sdk/obf/cd;Landroid/os/Bundle;)V

    .line 95
    return-void
.end method

.method static synthetic b(Lcom/baidu/bdgame/sdk/obf/cl;)V
    .registers 1

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/cl;->f()V

    return-void
.end method

.method private c()V
    .registers 3

    .prologue
    .line 98
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cl;->k:Lcom/baidu/bdgame/sdk/obf/cn;

    if-nez v0, :cond_3b

    .line 99
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/cn;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/cl;->e:Lcom/baidu/bdgame/sdk/obf/ce;

    invoke-direct {v0, v1}, Lcom/baidu/bdgame/sdk/obf/cn;-><init>(Lcom/baidu/bdgame/sdk/obf/ce;)V

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cl;->k:Lcom/baidu/bdgame/sdk/obf/cn;

    .line 101
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cl;->k:Lcom/baidu/bdgame/sdk/obf/cn;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/cl;->h:Lcom/baidu/bdgame/sdk/obf/iy;

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/cn;->b(Lcom/baidu/bdgame/sdk/obf/iy;)V

    .line 102
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cl;->k:Lcom/baidu/bdgame/sdk/obf/cn;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/cl;->g:Lcom/baidu/bdgame/sdk/obf/je;

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/cn;->a(Lcom/baidu/bdgame/sdk/obf/je;)V

    .line 103
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cl;->k:Lcom/baidu/bdgame/sdk/obf/cn;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/cl;->f:Lcom/baidu/bdgame/sdk/obf/jd;

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/cn;->a(Lcom/baidu/bdgame/sdk/obf/jd;)V

    .line 104
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cl;->k:Lcom/baidu/bdgame/sdk/obf/cn;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/cl;->j:Lcom/baidu/bdgame/sdk/obf/jg;

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/cn;->a(Lcom/baidu/bdgame/sdk/obf/jg;)V

    .line 105
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cl;->k:Lcom/baidu/bdgame/sdk/obf/cn;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/cl;->m:Lcom/baidu/bdgame/sdk/obf/gx;

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/gx;->a()Lcom/baidu/bdgame/sdk/obf/iw;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/cn;->a(Lcom/baidu/bdgame/sdk/obf/iw;)V

    .line 106
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cl;->k:Lcom/baidu/bdgame/sdk/obf/cn;

    iget v1, p0, Lcom/baidu/bdgame/sdk/obf/cl;->n:I

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/cn;->d(I)V

    .line 108
    :cond_3b
    return-void
.end method

.method static synthetic c(Lcom/baidu/bdgame/sdk/obf/cl;)V
    .registers 1

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/cl;->e()V

    return-void
.end method

.method static synthetic d(Lcom/baidu/bdgame/sdk/obf/cl;)Lcom/baidu/bdgame/sdk/obf/dl;
    .registers 2

    .prologue
    .line 22
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cl;->l:Lcom/baidu/bdgame/sdk/obf/dl;

    return-object v0
.end method

.method private d()V
    .registers 4

    .prologue
    .line 115
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cl;->i:Landroid/app/Activity;

    new-instance v1, Lcom/baidu/bdgame/sdk/obf/cl$3;

    invoke-direct {v1, p0}, Lcom/baidu/bdgame/sdk/obf/cl$3;-><init>(Lcom/baidu/bdgame/sdk/obf/cl;)V

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/bm;->e(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/n;)Z

    move-result v0

    .line 135
    if-nez v0, :cond_1a

    .line 136
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cl;->l:Lcom/baidu/bdgame/sdk/obf/dl;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/cl;->i:Landroid/app/Activity;

    const-string v2, "bdp_paycenter_tips_passport_invalid_passport"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/lh;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/dl;->h(Ljava/lang/String;)V

    .line 138
    :cond_1a
    return-void
.end method

.method static synthetic e(Lcom/baidu/bdgame/sdk/obf/cl;)Landroid/app/Activity;
    .registers 2

    .prologue
    .line 22
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cl;->i:Landroid/app/Activity;

    return-object v0
.end method

.method private e()V
    .registers 3

    .prologue
    .line 144
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cl;->m:Lcom/baidu/bdgame/sdk/obf/gx;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/gx;->b()I

    move-result v0

    packed-switch v0, :pswitch_data_38

    .line 159
    :goto_9
    return-void

    .line 146
    :pswitch_a
    const/4 v0, 0x1

    iput v0, p0, Lcom/baidu/bdgame/sdk/obf/cl;->n:I

    .line 147
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/cl;->f()V

    goto :goto_9

    .line 150
    :pswitch_11
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cl;->l:Lcom/baidu/bdgame/sdk/obf/dl;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/cl;->j:Lcom/baidu/bdgame/sdk/obf/jg;

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/jg;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/dl;->b(Ljava/lang/String;)V

    .line 151
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cl;->l:Lcom/baidu/bdgame/sdk/obf/dl;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/cl;->m:Lcom/baidu/bdgame/sdk/obf/gx;

    invoke-virtual {v1}, Lcom/baidu/bdgame/sdk/obf/gx;->a()Lcom/baidu/bdgame/sdk/obf/iw;

    move-result-object v1

    invoke-static {v1}, Lcom/baidu/bdgame/sdk/obf/ix;->b(Lcom/baidu/bdgame/sdk/obf/iw;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/dl;->c(Ljava/lang/String;)V

    .line 152
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cl;->l:Lcom/baidu/bdgame/sdk/obf/dl;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/dl;->q()V

    goto :goto_9

    .line 155
    :pswitch_31
    const/4 v0, 0x4

    iput v0, p0, Lcom/baidu/bdgame/sdk/obf/cl;->n:I

    .line 156
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/cl;->f()V

    goto :goto_9

    .line 144
    :pswitch_data_38
    .packed-switch 0x0
        :pswitch_a
        :pswitch_11
        :pswitch_31
    .end packed-switch
.end method

.method private f()V
    .registers 4

    .prologue
    .line 195
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/cl;->c()V

    .line 196
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cl;->e:Lcom/baidu/bdgame/sdk/obf/ce;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/cl;->k:Lcom/baidu/bdgame/sdk/obf/cn;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/baidu/bdgame/sdk/obf/ce;->a(Lcom/baidu/bdgame/sdk/obf/cd;Landroid/os/Bundle;)V

    .line 197
    return-void
.end method

.method private g()Z
    .registers 3

    .prologue
    .line 200
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/cl;->h()V

    .line 201
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cl;->j:Lcom/baidu/bdgame/sdk/obf/jg;

    if-eqz v0, :cond_9

    .line 202
    const/4 v0, 0x1

    .line 206
    :goto_8
    return v0

    .line 204
    :cond_9
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cl;->i:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 205
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cl;->i:Landroid/app/Activity;

    const-string v1, "bdp_paycenter_tips_unlogin"

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/jf;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 206
    const/4 v0, 0x0

    goto :goto_8
.end method

.method private h()V
    .registers 2

    .prologue
    .line 212
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cl;->i:Landroid/app/Activity;

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/bm;->a(Landroid/content/Context;)Lcom/baidu/bdgame/sdk/obf/jg;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cl;->j:Lcom/baidu/bdgame/sdk/obf/jg;

    .line 213
    return-void
.end method

.method private i()Z
    .registers 3

    .prologue
    .line 216
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cl;->f:Lcom/baidu/bdgame/sdk/obf/jd;

    if-eqz v0, :cond_6

    .line 217
    const/4 v0, 0x1

    .line 220
    :goto_5
    return v0

    .line 219
    :cond_6
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/cl;->i:Landroid/app/Activity;

    const-string v1, "bdp_paycenter_tips_un_order"

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/jf;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 220
    const/4 v0, 0x0

    goto :goto_5
.end method


# virtual methods
.method public a()V
    .registers 2

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/cl;->i()Z

    move-result v0

    if-nez v0, :cond_7

    .line 68
    :cond_6
    :goto_6
    return-void

    .line 63
    :cond_7
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/cl;->g()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 64
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/cl;->b()V

    .line 65
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/cl;->d()V

    goto :goto_6
.end method

.method public a(Lcom/baidu/bdgame/sdk/obf/iy;)V
    .registers 2

    .prologue
    .line 232
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/cl;->h:Lcom/baidu/bdgame/sdk/obf/iy;

    .line 233
    return-void
.end method

.method public a(Lcom/baidu/bdgame/sdk/obf/jd;)V
    .registers 2

    .prologue
    .line 224
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/cl;->f:Lcom/baidu/bdgame/sdk/obf/jd;

    .line 225
    return-void
.end method

.method public a(Lcom/baidu/bdgame/sdk/obf/je;)V
    .registers 2

    .prologue
    .line 228
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/cl;->g:Lcom/baidu/bdgame/sdk/obf/je;

    .line 229
    return-void
.end method
