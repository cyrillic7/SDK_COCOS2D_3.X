.class public abstract Lcom/baidu/bdgame/sdk/obf/it;
.super Lcom/baidu/bdgame/sdk/obf/cb;
.source "SourceFile"


# static fields
.field public static final e:I = 0x0

.field public static final f:I = 0x1


# instance fields
.field private a:Landroid/os/Handler;

.field private b:Landroid/app/Activity;

.field private c:Lcom/baidu/bdgame/sdk/obf/iv;

.field private d:Z

.field protected g:Landroid/content/Context;

.field private h:Lcom/baidu/bdgame/sdk/obf/iu;

.field private i:Ljava/lang/String;

.field private j:Z


# direct methods
.method public constructor <init>(Lcom/baidu/bdgame/sdk/obf/ce;)V
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 41
    invoke-direct {p0, p1}, Lcom/baidu/bdgame/sdk/obf/cb;-><init>(Lcom/baidu/bdgame/sdk/obf/ce;)V

    .line 179
    iput-boolean v0, p0, Lcom/baidu/bdgame/sdk/obf/it;->d:Z

    .line 235
    iput-boolean v0, p0, Lcom/baidu/bdgame/sdk/obf/it;->j:Z

    .line 42
    invoke-virtual {p1}, Lcom/baidu/bdgame/sdk/obf/ce;->b()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/it;->b:Landroid/app/Activity;

    .line 43
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/it;->b:Landroid/app/Activity;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/it;->g:Landroid/content/Context;

    .line 44
    invoke-direct {p0}, Lcom/baidu/bdgame/sdk/obf/it;->f()V

    .line 45
    return-void
.end method

.method static synthetic a(Lcom/baidu/bdgame/sdk/obf/it;)Lcom/baidu/bdgame/sdk/obf/iv;
    .registers 2

    .prologue
    .line 22
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/it;->c:Lcom/baidu/bdgame/sdk/obf/iv;

    return-object v0
.end method

.method static synthetic b(Lcom/baidu/bdgame/sdk/obf/it;)Lcom/baidu/bdgame/sdk/obf/iu;
    .registers 2

    .prologue
    .line 22
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/it;->h:Lcom/baidu/bdgame/sdk/obf/iu;

    return-object v0
.end method

.method private f()V
    .registers 3

    .prologue
    .line 48
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/it;->k()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/it;->a:Landroid/os/Handler;

    .line 49
    return-void
.end method


# virtual methods
.method public N()V
    .registers 3

    .prologue
    .line 60
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/it;->b:Landroid/app/Activity;

    const-string v1, "bdp_dialog_loading_paycenter_tips"

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/lh;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/baidu/bdgame/sdk/obf/it;->a(Ljava/lang/String;)V

    .line 61
    return-void
.end method

.method public O()V
    .registers 2

    .prologue
    .line 68
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/it$1;

    invoke-direct {v0, p0}, Lcom/baidu/bdgame/sdk/obf/it$1;-><init>(Lcom/baidu/bdgame/sdk/obf/it;)V

    invoke-virtual {p0, v0}, Lcom/baidu/bdgame/sdk/obf/it;->a(Ljava/lang/Runnable;)V

    .line 75
    return-void
.end method

.method protected P()V
    .registers 3

    .prologue
    .line 168
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/it;->a:Landroid/os/Handler;

    new-instance v1, Lcom/baidu/bdgame/sdk/obf/it$5;

    invoke-direct {v1, p0}, Lcom/baidu/bdgame/sdk/obf/it$5;-><init>(Lcom/baidu/bdgame/sdk/obf/it;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 177
    return-void
.end method

.method public final Q()Z
    .registers 2

    .prologue
    .line 182
    iget-boolean v0, p0, Lcom/baidu/bdgame/sdk/obf/it;->d:Z

    return v0
.end method

.method public R()V
    .registers 3

    .prologue
    .line 197
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/it;->h:Lcom/baidu/bdgame/sdk/obf/iu;

    if-nez v0, :cond_23

    .line 198
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/iu$a;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/it;->b:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/baidu/bdgame/sdk/obf/iu$a;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcom/baidu/bdgame/sdk/obf/it$7;

    invoke-direct {v1, p0}, Lcom/baidu/bdgame/sdk/obf/it$7;-><init>(Lcom/baidu/bdgame/sdk/obf/it;)V

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/iu$a;->a(Landroid/view/View$OnClickListener;)Lcom/baidu/bdgame/sdk/obf/iu$a;

    move-result-object v0

    new-instance v1, Lcom/baidu/bdgame/sdk/obf/it$6;

    invoke-direct {v1, p0}, Lcom/baidu/bdgame/sdk/obf/it$6;-><init>(Lcom/baidu/bdgame/sdk/obf/it;)V

    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/iu$a;->b(Landroid/view/View$OnClickListener;)Lcom/baidu/bdgame/sdk/obf/iu$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/iu$a;->a()Lcom/baidu/bdgame/sdk/obf/iu;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/it;->h:Lcom/baidu/bdgame/sdk/obf/iu;

    .line 215
    :cond_23
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/it;->h:Lcom/baidu/bdgame/sdk/obf/iu;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/iu;->show()V

    .line 216
    return-void
.end method

.method public S()Ljava/lang/String;
    .registers 2

    .prologue
    .line 232
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/it;->i:Ljava/lang/String;

    return-object v0
.end method

.method public T()Z
    .registers 3

    .prologue
    .line 238
    iget-boolean v0, p0, Lcom/baidu/bdgame/sdk/obf/it;->j:Z

    .line 239
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/baidu/bdgame/sdk/obf/it;->j:Z

    .line 240
    return v0
.end method

.method protected a()V
    .registers 2

    .prologue
    .line 220
    invoke-super {p0}, Lcom/baidu/bdgame/sdk/obf/cb;->a()V

    .line 221
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/it;->c:Lcom/baidu/bdgame/sdk/obf/iv;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/it;->c:Lcom/baidu/bdgame/sdk/obf/iv;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/iv;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 222
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/it;->c:Lcom/baidu/bdgame/sdk/obf/iv;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/iv;->a()I

    .line 224
    :cond_14
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/it;->h:Lcom/baidu/bdgame/sdk/obf/iu;

    if-eqz v0, :cond_25

    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/it;->h:Lcom/baidu/bdgame/sdk/obf/iu;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/iu;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_25

    .line 225
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/it;->h:Lcom/baidu/bdgame/sdk/obf/iu;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/iu;->a()I

    .line 227
    :cond_25
    return-void
.end method

.method protected a(Lcom/baidu/bdgame/sdk/obf/iv$b;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V
    .registers 10

    .prologue
    .line 100
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/it;->c:Lcom/baidu/bdgame/sdk/obf/iv;

    if-nez v0, :cond_13

    .line 101
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/iv$a;

    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/it;->l()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/baidu/bdgame/sdk/obf/iv$a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/iv$a;->a()Lcom/baidu/bdgame/sdk/obf/iv;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/it;->c:Lcom/baidu/bdgame/sdk/obf/iv;

    .line 104
    :cond_13
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1e

    .line 105
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/it;->c:Lcom/baidu/bdgame/sdk/obf/iv;

    invoke-virtual {v0, p1, p2}, Lcom/baidu/bdgame/sdk/obf/iv;->a(Lcom/baidu/bdgame/sdk/obf/iv$b;Ljava/lang/String;)V

    .line 107
    :cond_1e
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_29

    .line 108
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/it;->c:Lcom/baidu/bdgame/sdk/obf/iv;

    invoke-virtual {v0, p3}, Lcom/baidu/bdgame/sdk/obf/iv;->a(Ljava/lang/String;)V

    .line 110
    :cond_29
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_34

    .line 111
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/it;->c:Lcom/baidu/bdgame/sdk/obf/iv;

    invoke-virtual {v0, p4}, Lcom/baidu/bdgame/sdk/obf/iv;->b(Ljava/lang/String;)V

    .line 113
    :cond_34
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3f

    .line 114
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/it;->c:Lcom/baidu/bdgame/sdk/obf/iv;

    invoke-virtual {v0, p5}, Lcom/baidu/bdgame/sdk/obf/iv;->d(Ljava/lang/String;)V

    .line 116
    :cond_3f
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/it;->c:Lcom/baidu/bdgame/sdk/obf/iv;

    invoke-virtual {v0, p6}, Lcom/baidu/bdgame/sdk/obf/iv;->a(Landroid/view/View$OnClickListener;)V

    .line 117
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/it;->c:Lcom/baidu/bdgame/sdk/obf/iv;

    invoke-virtual {v0, p7}, Lcom/baidu/bdgame/sdk/obf/iv;->b(Landroid/view/View$OnClickListener;)V

    .line 118
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/it;->a:Landroid/os/Handler;

    new-instance v1, Lcom/baidu/bdgame/sdk/obf/it$3;

    invoke-direct {v1, p0}, Lcom/baidu/bdgame/sdk/obf/it$3;-><init>(Lcom/baidu/bdgame/sdk/obf/it;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 125
    return-void
.end method

.method public a(Ljava/lang/Runnable;)V
    .registers 3

    .prologue
    .line 52
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/it;->a:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 53
    return-void
.end method

.method public a(Ljava/lang/Runnable;J)V
    .registers 6

    .prologue
    .line 56
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/it;->a:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 57
    return-void
.end method

.method protected b(Lcom/baidu/bdgame/sdk/obf/iv$b;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V
    .registers 10

    .prologue
    .line 140
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/it;->c:Lcom/baidu/bdgame/sdk/obf/iv;

    if-nez v0, :cond_13

    .line 141
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/iv$a;

    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/it;->l()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/baidu/bdgame/sdk/obf/iv$a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/iv$a;->a()Lcom/baidu/bdgame/sdk/obf/iv;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/it;->c:Lcom/baidu/bdgame/sdk/obf/iv;

    .line 144
    :cond_13
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1e

    .line 145
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/it;->c:Lcom/baidu/bdgame/sdk/obf/iv;

    invoke-virtual {v0, p1, p2}, Lcom/baidu/bdgame/sdk/obf/iv;->a(Lcom/baidu/bdgame/sdk/obf/iv$b;Ljava/lang/String;)V

    .line 147
    :cond_1e
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_29

    .line 148
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/it;->c:Lcom/baidu/bdgame/sdk/obf/iv;

    invoke-virtual {v0, p3}, Lcom/baidu/bdgame/sdk/obf/iv;->a(Ljava/lang/String;)V

    .line 150
    :cond_29
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_34

    .line 151
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/it;->c:Lcom/baidu/bdgame/sdk/obf/iv;

    invoke-virtual {v0, p4}, Lcom/baidu/bdgame/sdk/obf/iv;->c(Ljava/lang/String;)V

    .line 153
    :cond_34
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3f

    .line 154
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/it;->c:Lcom/baidu/bdgame/sdk/obf/iv;

    invoke-virtual {v0, p5}, Lcom/baidu/bdgame/sdk/obf/iv;->d(Ljava/lang/String;)V

    .line 156
    :cond_3f
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/it;->c:Lcom/baidu/bdgame/sdk/obf/iv;

    invoke-virtual {v0, p6}, Lcom/baidu/bdgame/sdk/obf/iv;->a(Landroid/view/View$OnClickListener;)V

    .line 157
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/it;->c:Lcom/baidu/bdgame/sdk/obf/iv;

    invoke-virtual {v0, p7}, Lcom/baidu/bdgame/sdk/obf/iv;->b(Landroid/view/View$OnClickListener;)V

    .line 158
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/it;->a:Landroid/os/Handler;

    new-instance v1, Lcom/baidu/bdgame/sdk/obf/it$4;

    invoke-direct {v1, p0}, Lcom/baidu/bdgame/sdk/obf/it$4;-><init>(Lcom/baidu/bdgame/sdk/obf/it;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 165
    return-void
.end method

.method protected declared-synchronized b(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)V"
        }
    .end annotation

    .prologue
    .line 186
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0, p1}, Lcom/baidu/bdgame/sdk/obf/it;->a(Ljava/lang/Object;)V

    .line 187
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/bdgame/sdk/obf/it;->d:Z
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    .line 188
    monitor-exit p0

    return-void

    .line 186
    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public c(J)V
    .registers 6

    .prologue
    .line 78
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/it;->a:Landroid/os/Handler;

    new-instance v1, Lcom/baidu/bdgame/sdk/obf/it$2;

    invoke-direct {v1, p0}, Lcom/baidu/bdgame/sdk/obf/it$2;-><init>(Lcom/baidu/bdgame/sdk/obf/it;)V

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 85
    return-void
.end method

.method public f(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 64
    invoke-virtual {p0, p1}, Lcom/baidu/bdgame/sdk/obf/it;->a(Ljava/lang/String;)V

    .line 65
    return-void
.end method

.method protected abstract g()V
.end method

.method public g(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 244
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/bdgame/sdk/obf/it;->j:Z

    .line 245
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/it;->i:Ljava/lang/String;

    .line 246
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/baidu/bdgame/sdk/obf/it;->a(I)V

    .line 247
    return-void
.end method

.method public h(Ljava/lang/String;)V
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 250
    iput-boolean v0, p0, Lcom/baidu/bdgame/sdk/obf/it;->j:Z

    .line 251
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/it;->i:Ljava/lang/String;

    .line 252
    invoke-virtual {p0, v0}, Lcom/baidu/bdgame/sdk/obf/it;->a(I)V

    .line 253
    return-void
.end method

.method public n()V
    .registers 1

    .prologue
    .line 260
    return-void
.end method
