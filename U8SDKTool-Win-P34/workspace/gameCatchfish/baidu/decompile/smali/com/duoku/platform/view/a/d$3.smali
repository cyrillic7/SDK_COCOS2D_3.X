.class Lcom/duoku/platform/view/a/d$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/duoku/platform/view/a/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/duoku/platform/view/a/d;


# direct methods
.method constructor <init>(Lcom/duoku/platform/view/a/d;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/duoku/platform/view/a/d$3;->a:Lcom/duoku/platform/view/a/d;

    .line 351
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .registers 2

    .prologue
    .line 379
    return-void
.end method

.method public onPageScrolled(IFI)V
    .registers 4

    .prologue
    .line 373
    return-void
.end method

.method public onPageSelected(I)V
    .registers 5

    .prologue
    .line 359
    iget-object v0, p0, Lcom/duoku/platform/view/a/d$3;->a:Lcom/duoku/platform/view/a/d;

    invoke-static {v0, p1}, Lcom/duoku/platform/view/a/d;->a(Lcom/duoku/platform/view/a/d;I)V

    .line 360
    invoke-static {}, Lcom/duoku/platform/b;->b()Lcom/duoku/platform/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/b;->a()Lcom/duoku/platform/c/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/c/a;->a()Lcom/duoku/platform/ui/DKContainerActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/duoku/platform/util/q;->a(Landroid/app/Activity;)V

    .line 362
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2f

    .line 364
    invoke-static {}, Lcom/duoku/platform/j/a;->a()Lcom/duoku/platform/j/a;

    move-result-object v0

    const-string v1, "8"

    invoke-virtual {v0, v1}, Lcom/duoku/platform/j/a;->a(Ljava/lang/String;)V

    .line 365
    invoke-static {}, Lcom/duoku/platform/j/a;->a()Lcom/duoku/platform/j/a;

    move-result-object v0

    iget-object v1, p0, Lcom/duoku/platform/view/a/d$3;->a:Lcom/duoku/platform/view/a/d;

    invoke-static {v1}, Lcom/duoku/platform/view/a/d;->a(Lcom/duoku/platform/view/a/d;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "cp_private_statistic"

    invoke-virtual {v0, v1, v2}, Lcom/duoku/platform/j/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 367
    :cond_2f
    return-void
.end method
