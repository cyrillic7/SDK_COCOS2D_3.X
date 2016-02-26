.class final Lcom/baidu/bdgame/sdk/obf/ja$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/bdgame/sdk/obf/ja;->a(Landroid/app/Activity;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/bdgame/sdk/obf/ja;


# direct methods
.method constructor <init>(Lcom/baidu/bdgame/sdk/obf/ja;)V
    .registers 2

    .prologue
    .line 71
    iput-object p1, p0, Lcom/baidu/bdgame/sdk/obf/ja$1;->a:Lcom/baidu/bdgame/sdk/obf/ja;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .registers 2
    .param p1, "arg0"    # I

    .prologue
    .line 82
    return-void
.end method

.method public onPageScrolled(IFI)V
    .registers 4
    .param p1, "arg0"    # I
    .param p2, "arg1"    # F
    .param p3, "arg2"    # I

    .prologue
    .line 79
    return-void
.end method

.method public onPageSelected(I)V
    .registers 3
    .param p1, "arg0"    # I

    .prologue
    .line 75
    iget-object v0, p0, Lcom/baidu/bdgame/sdk/obf/ja$1;->a:Lcom/baidu/bdgame/sdk/obf/ja;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/ja;->i()Lcom/baidu/bdgame/sdk/obf/ce;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/ce;->a()V

    .line 76
    return-void
.end method
