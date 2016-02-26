.class public Lcom/baidu/bdgame/sdk/obf/lu;
.super Lcom/baidu/bdgame/sdk/obf/ls;
.source "SourceFile"


# instance fields
.field private c:Landroid/widget/TextView;

.field private d:Ljava/lang/String;

.field private e:I

.field private f:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 27
    const-string v0, "bdp_loading_dialog_style"

    invoke-static {p1, v0}, Lcom/baidu/bdgame/sdk/obf/kq;->g(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/baidu/bdgame/sdk/obf/ls;-><init>(Landroid/content/Context;I)V

    .line 24
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/lu;->f:Ljava/lang/Object;

    .line 28
    invoke-virtual {p0, v1}, Lcom/baidu/bdgame/sdk/obf/lu;->setCancelable(Z)V

    .line 29
    invoke-virtual {p0, v1}, Lcom/baidu/bdgame/sdk/obf/lu;->setCanceledOnTouchOutside(Z)V

    .line 30
    return-void
.end method

.method private b(I)V
    .registers 3

    .prologue
    .line 68
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/lu;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/baidu/bdgame/sdk/obf/lu;->b(Ljava/lang/String;)V

    .line 69
    return-void
.end method

.method private b(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 57
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/lu;->d:Ljava/lang/String;

    .line 58
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/lu;->c:Landroid/widget/TextView;

    if-eqz v0, :cond_b

    .line 59
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/lu;->c:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 61
    :cond_b
    return-void
.end method


# virtual methods
.method protected a(Landroid/view/LayoutInflater;)Landroid/view/View;
    .registers 6

    .prologue
    const/4 v3, 0x0

    .line 34
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/lu;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "bdp_dialog_loading"

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/kq;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 35
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/lu;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "txt_des"

    invoke-static {v0, v2}, Lcom/baidu/bdgame/sdk/obf/kq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/lu;->c:Landroid/widget/TextView;

    .line 36
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/lu;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_32

    .line 37
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/lu;->c:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/baidu/bdgame/sdk/obf/lu;->d:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 38
    iput-object v3, p0, Lcom/baidu/bdgame/sdk/obf/lu;->d:Ljava/lang/String;

    .line 40
    :cond_32
    return-object v1
.end method

.method public final a(I)V
    .registers 3

    .prologue
    .line 97
    if-eqz p1, :cond_e

    .line 98
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/lu;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 102
    :goto_a
    invoke-virtual {p0, v0}, Lcom/baidu/bdgame/sdk/obf/lu;->a(Ljava/lang/String;)V

    .line 103
    return-void

    .line 100
    :cond_e
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public final a(Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 76
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/lu;->f:Ljava/lang/Object;

    monitor-enter v1

    .line 77
    :try_start_3
    iget v0, p0, Lcom/baidu/bdgame/sdk/obf/lu;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/baidu/bdgame/sdk/obf/lu;->e:I

    .line 78
    iget v0, p0, Lcom/baidu/bdgame/sdk/obf/lu;->e:I

    if-lez v0, :cond_29

    .line 79
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 80
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/lu;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "bdp_dialog_loading"

    invoke-static {v0, v2}, Lcom/baidu/bdgame/sdk/obf/kq;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/baidu/bdgame/sdk/obf/lu;->b(I)V

    .line 84
    :goto_20
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/lu;->isShowing()Z

    move-result v0

    if-nez v0, :cond_29

    .line 85
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/lu;->show()V

    .line 88
    :cond_29
    monitor-exit v1

    .line 89
    return-void

    .line 82
    :cond_2b
    invoke-direct {p0, p1}, Lcom/baidu/bdgame/sdk/obf/lu;->b(Ljava/lang/String;)V

    goto :goto_20

    .line 88
    :catchall_2f
    move-exception v0

    monitor-exit v1
    :try_end_31
    .catchall {:try_start_3 .. :try_end_31} :catchall_2f

    throw v0
.end method

.method public final b()V
    .registers 3

    .prologue
    .line 109
    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/lu;->f:Ljava/lang/Object;

    monitor-enter v1

    .line 110
    :try_start_3
    iget v0, p0, Lcom/baidu/bdgame/sdk/obf/lu;->e:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/baidu/bdgame/sdk/obf/lu;->e:I

    .line 111
    iget v0, p0, Lcom/baidu/bdgame/sdk/obf/lu;->e:I

    if-gez v0, :cond_10

    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/bdgame/sdk/obf/lu;->e:I

    .line 112
    :cond_10
    iget v0, p0, Lcom/baidu/bdgame/sdk/obf/lu;->e:I

    if-nez v0, :cond_1d

    .line 113
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/lu;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 114
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/lu;->dismiss()V

    .line 117
    :cond_1d
    monitor-exit v1

    .line 118
    return-void

    .line 117
    :catchall_1f
    move-exception v0

    monitor-exit v1
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_1f

    throw v0
.end method

.method public onBackPressed()V
    .registers 1

    .prologue
    .line 50
    return-void
.end method

.method public show()V
    .registers 3

    .prologue
    const/4 v1, -0x2

    .line 45
    invoke-super {p0}, Lcom/baidu/bdgame/sdk/obf/ls;->show()V

    .line 46
    invoke-virtual {p0}, Lcom/baidu/bdgame/sdk/obf/lu;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setLayout(II)V

    .line 47
    return-void
.end method
