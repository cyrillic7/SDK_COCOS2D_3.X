.class final Lcom/baidu/platformsdk/pay/widget/BankCardChooseLayout$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/platformsdk/pay/widget/BankCardChooseLayout;->a(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/platformsdk/pay/widget/BankCardChooseLayout;


# direct methods
.method constructor <init>(Lcom/baidu/platformsdk/pay/widget/BankCardChooseLayout;)V
    .registers 2

    .prologue
    .line 66
    iput-object p1, p0, Lcom/baidu/platformsdk/pay/widget/BankCardChooseLayout$1;->a:Lcom/baidu/platformsdk/pay/widget/BankCardChooseLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/baidu/platformsdk/pay/widget/BankCardChooseLayout$1;->a:Lcom/baidu/platformsdk/pay/widget/BankCardChooseLayout;

    check-cast p1, Lcom/baidu/platformsdk/pay/widget/BankCardChooseLayout$a;

    .end local p1    # "v":Landroid/view/View;
    invoke-static {v0, p1}, Lcom/baidu/platformsdk/pay/widget/BankCardChooseLayout;->a(Lcom/baidu/platformsdk/pay/widget/BankCardChooseLayout;Lcom/baidu/platformsdk/pay/widget/BankCardChooseLayout$a;)V

    .line 71
    return-void
.end method
