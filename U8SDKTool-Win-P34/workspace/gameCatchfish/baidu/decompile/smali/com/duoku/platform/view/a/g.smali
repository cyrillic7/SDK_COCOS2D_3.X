.class public Lcom/duoku/platform/view/a/g;
.super Lcom/duoku/platform/view/a/b;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ValidFragment"
    }
.end annotation


# instance fields
.field public c:Landroid/view/View$OnClickListener;

.field private d:Landroid/widget/Button;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/ListView;

.field private g:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/duoku/platform/ui/a/i;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/duoku/platform/ui/a/i;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/duoku/platform/view/a/b;-><init>(Landroid/content/Context;)V

    .line 53
    iput-object p2, p0, Lcom/duoku/platform/view/a/g;->g:Ljava/util/ArrayList;

    .line 54
    return-void
.end method

.method private a()V
    .registers 4

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 95
    iget-object v0, p0, Lcom/duoku/platform/view/a/g;->g:Ljava/util/ArrayList;

    if-nez v0, :cond_12

    .line 96
    iget-object v0, p0, Lcom/duoku/platform/view/a/g;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 97
    iget-object v0, p0, Lcom/duoku/platform/view/a/g;->f:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 111
    :goto_11
    return-void

    .line 102
    :cond_12
    iget-object v0, p0, Lcom/duoku/platform/view/a/g;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_25

    .line 103
    iget-object v0, p0, Lcom/duoku/platform/view/a/g;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 104
    iget-object v0, p0, Lcom/duoku/platform/view/a/g;->f:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V

    goto :goto_11

    .line 109
    :cond_25
    new-instance v0, Lcom/duoku/platform/a/e;

    iget-object v1, p0, Lcom/duoku/platform/view/a/g;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/duoku/platform/view/a/g;->g:Ljava/util/ArrayList;

    invoke-direct {v0, v1, v2}, Lcom/duoku/platform/a/e;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 110
    iget-object v1, p0, Lcom/duoku/platform/view/a/g;->f:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_11
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .registers 2

    .prologue
    .line 85
    invoke-super {p0, p1}, Lcom/duoku/platform/view/a/b;->onActivityCreated(Landroid/os/Bundle;)V

    .line 86
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 8

    .prologue
    .line 64
    invoke-static {}, Lcom/duoku/platform/ui/b/a;->a()Lcom/duoku/platform/ui/b/a;

    move-result-object v0

    iget-object v1, p0, Lcom/duoku/platform/view/a/g;->a:Landroid/content/Context;

    const-string v2, "dk_fragment_private_portrait"

    .line 65
    const-string v3, "dk_fragment_private_landscape"

    .line 64
    invoke-virtual {v0, v1, v2, v3}, Lcom/duoku/platform/ui/b/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 65
    const/4 v1, 0x0

    .line 64
    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 67
    iget-object v0, p0, Lcom/duoku/platform/view/a/g;->a:Landroid/content/Context;

    const-string v2, "dk_btn_submit_question"

    invoke-static {v0, v2}, Lcom/duoku/platform/util/m;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/duoku/platform/view/a/g;->d:Landroid/widget/Button;

    .line 68
    iget-object v0, p0, Lcom/duoku/platform/view/a/g;->a:Landroid/content/Context;

    const-string v2, "dk_tv_private_none_question"

    invoke-static {v0, v2}, Lcom/duoku/platform/util/m;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/duoku/platform/view/a/g;->e:Landroid/widget/TextView;

    .line 69
    iget-object v0, p0, Lcom/duoku/platform/view/a/g;->a:Landroid/content/Context;

    const-string v2, "dk_list_view_my_question"

    invoke-static {v0, v2}, Lcom/duoku/platform/util/m;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/duoku/platform/view/a/g;->f:Landroid/widget/ListView;

    .line 70
    iget-object v0, p0, Lcom/duoku/platform/view/a/g;->d:Landroid/widget/Button;

    iget-object v2, p0, Lcom/duoku/platform/view/a/g;->c:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    invoke-direct {p0}, Lcom/duoku/platform/view/a/g;->a()V

    .line 76
    invoke-virtual {p0, v1}, Lcom/duoku/platform/view/a/g;->a(Landroid/view/View;)V

    .line 78
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/duoku/platform/util/k;->a(Ljava/lang/String;)Lcom/duoku/platform/util/k;

    move-result-object v0

    const-string v2, "DKPrivateFragment--onCreateView"

    invoke-virtual {v0, v2}, Lcom/duoku/platform/util/k;->e(Ljava/lang/String;)V

    .line 80
    return-object v1
.end method
