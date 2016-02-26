.class Lcom/baidu/platformsdk/pay/widget/PayCenterLoadingView$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/platformsdk/pay/widget/PayCenterLoadingView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/platformsdk/pay/widget/PayCenterLoadingView;


# direct methods
.method private constructor <init>(Lcom/baidu/platformsdk/pay/widget/PayCenterLoadingView;)V
    .registers 2

    .prologue
    .line 126
    iput-object p1, p0, Lcom/baidu/platformsdk/pay/widget/PayCenterLoadingView$a;->a:Lcom/baidu/platformsdk/pay/widget/PayCenterLoadingView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/baidu/platformsdk/pay/widget/PayCenterLoadingView;Lcom/baidu/platformsdk/pay/widget/PayCenterLoadingView$1;)V
    .registers 3

    .prologue
    .line 126
    invoke-direct {p0, p1}, Lcom/baidu/platformsdk/pay/widget/PayCenterLoadingView$a;-><init>(Lcom/baidu/platformsdk/pay/widget/PayCenterLoadingView;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 130
    iget-object v0, p0, Lcom/baidu/platformsdk/pay/widget/PayCenterLoadingView$a;->a:Lcom/baidu/platformsdk/pay/widget/PayCenterLoadingView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/baidu/platformsdk/pay/widget/PayCenterLoadingView;->a(Lcom/baidu/platformsdk/pay/widget/PayCenterLoadingView;Z)Z

    .line 131
    iget-object v0, p0, Lcom/baidu/platformsdk/pay/widget/PayCenterLoadingView$a;->a:Lcom/baidu/platformsdk/pay/widget/PayCenterLoadingView;

    invoke-virtual {v0}, Lcom/baidu/platformsdk/pay/widget/PayCenterLoadingView;->a()V

    .line 132
    iget-object v0, p0, Lcom/baidu/platformsdk/pay/widget/PayCenterLoadingView$a;->a:Lcom/baidu/platformsdk/pay/widget/PayCenterLoadingView;

    invoke-static {v0}, Lcom/baidu/platformsdk/pay/widget/PayCenterLoadingView;->a(Lcom/baidu/platformsdk/pay/widget/PayCenterLoadingView;)Lcom/baidu/platformsdk/pay/widget/PayCenterLoadingView$b;

    move-result-object v0

    if-eqz v0, :cond_1c

    .line 133
    iget-object v0, p0, Lcom/baidu/platformsdk/pay/widget/PayCenterLoadingView$a;->a:Lcom/baidu/platformsdk/pay/widget/PayCenterLoadingView;

    invoke-static {v0}, Lcom/baidu/platformsdk/pay/widget/PayCenterLoadingView;->a(Lcom/baidu/platformsdk/pay/widget/PayCenterLoadingView;)Lcom/baidu/platformsdk/pay/widget/PayCenterLoadingView$b;

    move-result-object v0

    invoke-interface {v0}, Lcom/baidu/platformsdk/pay/widget/PayCenterLoadingView$b;->a()V

    .line 135
    :cond_1c
    return-void
.end method
