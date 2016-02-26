.class public Lcom/duoku/platform/view/common/b;
.super Lcom/duoku/platform/view/common/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/duoku/platform/view/common/b$a;
    }
.end annotation


# instance fields
.field private a:Landroid/view/WindowManager;

.field private i:Z

.field private j:Landroid/view/View;

.field private k:Landroid/view/View;

.field private l:Lcom/duoku/platform/view/common/b$a;

.field private m:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private n:Landroid/view/ViewTreeObserver$OnScrollChangedListener;


# direct methods
.method private c()V
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 882
    iget-object v0, p0, Lcom/duoku/platform/view/common/b;->m:Ljava/lang/ref/WeakReference;

    .line 884
    if-eqz v0, :cond_19

    .line 886
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 888
    :goto_b
    if-eqz v0, :cond_16

    .line 890
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 891
    iget-object v2, p0, Lcom/duoku/platform/view/common/b;->n:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {v0, v2}, Landroid/view/ViewTreeObserver;->removeOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 893
    :cond_16
    iput-object v1, p0, Lcom/duoku/platform/view/common/b;->m:Ljava/lang/ref/WeakReference;

    .line 894
    return-void

    :cond_19
    move-object v0, v1

    goto :goto_b
.end method


# virtual methods
.method public a()Z
    .registers 2

    .prologue
    .line 301
    iget-boolean v0, p0, Lcom/duoku/platform/view/common/b;->i:Z

    return v0
.end method

.method public b()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 666
    invoke-virtual {p0}, Lcom/duoku/platform/view/common/b;->a()Z

    move-result v0

    if-eqz v0, :cond_3a

    iget-object v0, p0, Lcom/duoku/platform/view/common/b;->k:Landroid/view/View;

    if-eqz v0, :cond_3a

    .line 668
    invoke-direct {p0}, Lcom/duoku/platform/view/common/b;->c()V

    .line 672
    :try_start_f
    iget-object v0, p0, Lcom/duoku/platform/view/common/b;->a:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/duoku/platform/view/common/b;->k:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V
    :try_end_16
    .catchall {:try_start_f .. :try_end_16} :catchall_3b

    .line 676
    iget-object v0, p0, Lcom/duoku/platform/view/common/b;->k:Landroid/view/View;

    iget-object v1, p0, Lcom/duoku/platform/view/common/b;->j:Landroid/view/View;

    if-eq v0, v1, :cond_2b

    iget-object v0, p0, Lcom/duoku/platform/view/common/b;->k:Landroid/view/View;

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2b

    .line 678
    iget-object v0, p0, Lcom/duoku/platform/view/common/b;->k:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/duoku/platform/view/common/b;->j:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 680
    :cond_2b
    iput-object v4, p0, Lcom/duoku/platform/view/common/b;->k:Landroid/view/View;

    .line 681
    iput-boolean v3, p0, Lcom/duoku/platform/view/common/b;->i:Z

    .line 682
    sput-boolean v3, Lcom/duoku/platform/view/common/b;->c:Z

    .line 684
    iget-object v0, p0, Lcom/duoku/platform/view/common/b;->l:Lcom/duoku/platform/view/common/b$a;

    if-eqz v0, :cond_3a

    .line 686
    iget-object v0, p0, Lcom/duoku/platform/view/common/b;->l:Lcom/duoku/platform/view/common/b$a;

    invoke-interface {v0}, Lcom/duoku/platform/view/common/b$a;->a()V

    .line 690
    :cond_3a
    return-void

    .line 675
    :catchall_3b
    move-exception v0

    move-object v1, v0

    .line 676
    iget-object v0, p0, Lcom/duoku/platform/view/common/b;->k:Landroid/view/View;

    iget-object v2, p0, Lcom/duoku/platform/view/common/b;->j:Landroid/view/View;

    if-eq v0, v2, :cond_52

    iget-object v0, p0, Lcom/duoku/platform/view/common/b;->k:Landroid/view/View;

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_52

    .line 678
    iget-object v0, p0, Lcom/duoku/platform/view/common/b;->k:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/duoku/platform/view/common/b;->j:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 680
    :cond_52
    iput-object v4, p0, Lcom/duoku/platform/view/common/b;->k:Landroid/view/View;

    .line 681
    iput-boolean v3, p0, Lcom/duoku/platform/view/common/b;->i:Z

    .line 682
    sput-boolean v3, Lcom/duoku/platform/view/common/b;->c:Z

    .line 684
    iget-object v0, p0, Lcom/duoku/platform/view/common/b;->l:Lcom/duoku/platform/view/common/b$a;

    if-eqz v0, :cond_61

    .line 686
    iget-object v0, p0, Lcom/duoku/platform/view/common/b;->l:Lcom/duoku/platform/view/common/b$a;

    invoke-interface {v0}, Lcom/duoku/platform/view/common/b$a;->a()V

    .line 688
    :cond_61
    throw v1
.end method
