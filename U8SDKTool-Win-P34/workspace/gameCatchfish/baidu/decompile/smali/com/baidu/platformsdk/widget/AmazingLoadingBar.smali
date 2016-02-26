.class public Lcom/baidu/platformsdk/widget/AmazingLoadingBar;
.super Landroid/widget/LinearLayout;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/baidu/bdgame/sdk/obf/by;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/platformsdk/widget/AmazingLoadingBar$a;
    }
.end annotation


# instance fields
.field private a:Landroid/widget/ProgressBar;

.field private b:Landroid/widget/TextView;

.field private c:Z

.field private d:Lcom/baidu/platformsdk/widget/AmazingLoadingBar$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 19
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 16
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/platformsdk/widget/AmazingLoadingBar;->c:Z

    .line 21
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 16
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/platformsdk/widget/AmazingLoadingBar;->c:Z

    .line 25
    return-void
.end method


# virtual methods
.method public a()V
    .registers 4

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/baidu/platformsdk/widget/AmazingLoadingBar;->c:Z

    if-eqz v0, :cond_5

    .line 53
    :goto_4
    return-void

    .line 49
    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/platformsdk/widget/AmazingLoadingBar;->c:Z

    .line 50
    iget-object v0, p0, Lcom/baidu/platformsdk/widget/AmazingLoadingBar;->a:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 51
    iget-object v0, p0, Lcom/baidu/platformsdk/widget/AmazingLoadingBar;->b:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/baidu/platformsdk/widget/AmazingLoadingBar;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "bdp_amazing_loading"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/kq;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 52
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/baidu/platformsdk/widget/AmazingLoadingBar;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_4
.end method

.method public a(Lcom/baidu/platformsdk/widget/AmazingLoadingBar$a;)V
    .registers 2

    .prologue
    .line 36
    iput-object p1, p0, Lcom/baidu/platformsdk/widget/AmazingLoadingBar;->d:Lcom/baidu/platformsdk/widget/AmazingLoadingBar$a;

    .line 37
    return-void
.end method

.method public b()V
    .registers 4

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/baidu/platformsdk/widget/AmazingLoadingBar;->c:Z

    if-nez v0, :cond_5

    .line 63
    :goto_4
    return-void

    .line 59
    :cond_5
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/platformsdk/widget/AmazingLoadingBar;->c:Z

    .line 60
    iget-object v0, p0, Lcom/baidu/platformsdk/widget/AmazingLoadingBar;->a:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 61
    iget-object v0, p0, Lcom/baidu/platformsdk/widget/AmazingLoadingBar;->b:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/baidu/platformsdk/widget/AmazingLoadingBar;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "bdp_amazing_loading_fail"

    invoke-static {v1, v2}, Lcom/baidu/bdgame/sdk/obf/kq;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 62
    invoke-virtual {p0, p0}, Lcom/baidu/platformsdk/widget/AmazingLoadingBar;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_4
.end method

.method public onClick(Landroid/view/View;)V
    .registers 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/baidu/platformsdk/widget/AmazingLoadingBar;->d:Lcom/baidu/platformsdk/widget/AmazingLoadingBar$a;

    if-eqz v0, :cond_9

    .line 68
    iget-object v0, p0, Lcom/baidu/platformsdk/widget/AmazingLoadingBar;->d:Lcom/baidu/platformsdk/widget/AmazingLoadingBar$a;

    invoke-interface {v0}, Lcom/baidu/platformsdk/widget/AmazingLoadingBar$a;->f()V

    .line 70
    :cond_9
    return-void
.end method

.method protected onFinishInflate()V
    .registers 3

    .prologue
    .line 40
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 41
    invoke-virtual {p0}, Lcom/baidu/platformsdk/widget/AmazingLoadingBar;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "progress_bar"

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/kq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/platformsdk/widget/AmazingLoadingBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/baidu/platformsdk/widget/AmazingLoadingBar;->a:Landroid/widget/ProgressBar;

    .line 42
    invoke-virtual {p0}, Lcom/baidu/platformsdk/widget/AmazingLoadingBar;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "progress_tip"

    invoke-static {v0, v1}, Lcom/baidu/bdgame/sdk/obf/kq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/platformsdk/widget/AmazingLoadingBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/baidu/platformsdk/widget/AmazingLoadingBar;->b:Landroid/widget/TextView;

    .line 43
    return-void
.end method
