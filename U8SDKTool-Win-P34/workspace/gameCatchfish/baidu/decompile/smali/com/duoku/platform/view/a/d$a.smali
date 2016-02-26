.class Lcom/duoku/platform/view/a/d$a;
.super Landroid/support/v4/app/FragmentPagerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/duoku/platform/view/a/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/duoku/platform/view/a/d;


# direct methods
.method public constructor <init>(Lcom/duoku/platform/view/a/d;Landroid/support/v4/app/FragmentManager;)V
    .registers 3

    .prologue
    .line 388
    iput-object p1, p0, Lcom/duoku/platform/view/a/d$a;->a:Lcom/duoku/platform/view/a/d;

    .line 389
    invoke-direct {p0, p2}, Landroid/support/v4/app/FragmentPagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;)V

    .line 390
    return-void
.end method


# virtual methods
.method public getCount()I
    .registers 2

    .prologue
    .line 407
    iget-object v0, p0, Lcom/duoku/platform/view/a/d$a;->a:Lcom/duoku/platform/view/a/d;

    invoke-static {v0}, Lcom/duoku/platform/view/a/d;->c(Lcom/duoku/platform/view/a/d;)[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method public getItem(I)Landroid/support/v4/app/Fragment;
    .registers 3

    .prologue
    .line 395
    iget-object v0, p0, Lcom/duoku/platform/view/a/d$a;->a:Lcom/duoku/platform/view/a/d;

    invoke-static {v0}, Lcom/duoku/platform/view/a/d;->b(Lcom/duoku/platform/view/a/d;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    return-object v0
.end method

.method public getPageTitle(I)Ljava/lang/CharSequence;
    .registers 4

    .prologue
    .line 401
    iget-object v0, p0, Lcom/duoku/platform/view/a/d$a;->a:Lcom/duoku/platform/view/a/d;

    invoke-static {v0}, Lcom/duoku/platform/view/a/d;->c(Lcom/duoku/platform/view/a/d;)[Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/duoku/platform/view/a/d$a;->a:Lcom/duoku/platform/view/a/d;

    invoke-static {v1}, Lcom/duoku/platform/view/a/d;->c(Lcom/duoku/platform/view/a/d;)[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    rem-int v1, p1, v1

    aget-object v0, v0, v1

    return-object v0
.end method
