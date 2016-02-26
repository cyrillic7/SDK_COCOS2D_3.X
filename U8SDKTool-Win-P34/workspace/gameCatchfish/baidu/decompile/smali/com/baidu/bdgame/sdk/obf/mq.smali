.class public Lcom/baidu/bdgame/sdk/obf/mq;
.super Lcom/baidu/bdgame/sdk/obf/cd;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/bdgame/sdk/obf/mq$a;
    }
.end annotation


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/TextView;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Lcom/baidu/bdgame/sdk/obf/mq$a;


# direct methods
.method public constructor <init>(Lcom/baidu/bdgame/sdk/obf/ce;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/baidu/bdgame/sdk/obf/cd;-><init>(Lcom/baidu/bdgame/sdk/obf/ce;)V

    .line 30
    iput-object p2, p0, Lcom/baidu/bdgame/sdk/obf/mq;->d:Ljava/lang/String;

    .line 31
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_15

    .line 32
    const-string v0, "\\n"

    const-string v1, "\n"

    invoke-virtual {p3, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/mq;->e:Ljava/lang/String;

    .line 34
    :cond_15
    return-void
.end method

.method static synthetic a(Lcom/baidu/bdgame/sdk/obf/mq;)Lcom/baidu/bdgame/sdk/obf/mq$a;
    .registers 2

    .prologue
    .line 17
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/mq;->f:Lcom/baidu/bdgame/sdk/obf/mq$a;

    return-object v0
.end method


# virtual methods
.method protected a(Landroid/app/Activity;)Landroid/view/View;
    .registers 5

    .prologue
    .line 38
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const-string v1, "bdp_view_controller_account_tip_upgrade_done"

    invoke-static {p1, v1}, Lcom/baidu/bdgame/sdk/obf/kq;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 39
    const-string v0, "txt_title"

    invoke-static {p1, v0}, Lcom/baidu/bdgame/sdk/obf/kq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/mq;->a:Landroid/widget/TextView;

    .line 40
    const-string v0, "txt_content"

    invoke-static {p1, v0}, Lcom/baidu/bdgame/sdk/obf/kq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/mq;->b:Landroid/widget/TextView;

    .line 41
    const-string v0, "txt_ok"

    invoke-static {p1, v0}, Lcom/baidu/bdgame/sdk/obf/kq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/baidu/bdgame/sdk/obf/mq;->c:Landroid/widget/TextView;

    .line 42
    return-object v1
.end method

.method protected a(Landroid/app/Activity;Landroid/view/View;)V
    .registers 5

    .prologue
    .line 47
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/mq;->a:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/mq;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 48
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/mq;->b:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/baidu/bdgame/sdk/obf/mq;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 49
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/mq;->c:Landroid/widget/TextView;

    new-instance v1, Lcom/baidu/bdgame/sdk/obf/mq$1;

    invoke-direct {v1, p0}, Lcom/baidu/bdgame/sdk/obf/mq$1;-><init>(Lcom/baidu/bdgame/sdk/obf/mq;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 58
    invoke-super {p0, p1, p2}, Lcom/baidu/bdgame/sdk/obf/cd;->a(Landroid/app/Activity;Landroid/view/View;)V

    .line 59
    return-void
.end method

.method public a(Lcom/baidu/bdgame/sdk/obf/mq$a;)V
    .registers 2

    .prologue
    .line 62
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/mq;->f:Lcom/baidu/bdgame/sdk/obf/mq$a;

    .line 63
    return-void
.end method
