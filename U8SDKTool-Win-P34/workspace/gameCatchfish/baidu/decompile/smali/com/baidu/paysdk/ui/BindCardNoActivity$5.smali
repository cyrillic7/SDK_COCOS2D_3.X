.class Lcom/baidu/paysdk/ui/BindCardNoActivity$5;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/baidu/paysdk/ui/BindCardNoActivity;


# direct methods
.method constructor <init>(Lcom/baidu/paysdk/ui/BindCardNoActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/baidu/paysdk/ui/BindCardNoActivity$5;->this$0:Lcom/baidu/paysdk/ui/BindCardNoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    iget-object v0, p0, Lcom/baidu/paysdk/ui/BindCardNoActivity$5;->this$0:Lcom/baidu/paysdk/ui/BindCardNoActivity;

    const/16 v1, 0x21

    invoke-static {v0, v1}, Lcom/baidu/wallet/core/utils/GlobalUtils;->safeDismissDialog(Lcom/baidu/wallet/core/BaseActivity;I)V

    iget-object v0, p0, Lcom/baidu/paysdk/ui/BindCardNoActivity$5;->this$0:Lcom/baidu/paysdk/ui/BindCardNoActivity;

    # getter for: Lcom/baidu/paysdk/ui/BindCardNoActivity;->mErrorCode:I
    invoke-static {v0}, Lcom/baidu/paysdk/ui/BindCardNoActivity;->access$000(Lcom/baidu/paysdk/ui/BindCardNoActivity;)I

    move-result v0

    const v1, 0x186bb

    if-ne v0, v1, :cond_1e

    iget-object v0, p0, Lcom/baidu/paysdk/ui/BindCardNoActivity$5;->this$0:Lcom/baidu/paysdk/ui/BindCardNoActivity;

    iget-object v1, p0, Lcom/baidu/paysdk/ui/BindCardNoActivity$5;->this$0:Lcom/baidu/paysdk/ui/BindCardNoActivity;

    # getter for: Lcom/baidu/paysdk/ui/BindCardNoActivity;->mResult:Lcom/baidu/paysdk/datamodel/GetCardInfoResponse;
    invoke-static {v1}, Lcom/baidu/paysdk/ui/BindCardNoActivity;->access$100(Lcom/baidu/paysdk/ui/BindCardNoActivity;)Lcom/baidu/paysdk/datamodel/GetCardInfoResponse;

    move-result-object v1

    # invokes: Lcom/baidu/paysdk/ui/BindCardNoActivity;->handCardInfo(Lcom/baidu/paysdk/datamodel/GetCardInfoResponse;)V
    invoke-static {v0, v1}, Lcom/baidu/paysdk/ui/BindCardNoActivity;->access$200(Lcom/baidu/paysdk/ui/BindCardNoActivity;Lcom/baidu/paysdk/datamodel/GetCardInfoResponse;)V

    :cond_1d
    :goto_1d
    return-void

    :cond_1e
    iget-object v0, p0, Lcom/baidu/paysdk/ui/BindCardNoActivity$5;->this$0:Lcom/baidu/paysdk/ui/BindCardNoActivity;

    # getter for: Lcom/baidu/paysdk/ui/BindCardNoActivity;->mErrorCode:I
    invoke-static {v0}, Lcom/baidu/paysdk/ui/BindCardNoActivity;->access$000(Lcom/baidu/paysdk/ui/BindCardNoActivity;)I

    move-result v0

    const v1, 0x186bc

    if-ne v0, v1, :cond_1d

    iget-object v0, p0, Lcom/baidu/paysdk/ui/BindCardNoActivity$5;->this$0:Lcom/baidu/paysdk/ui/BindCardNoActivity;

    # invokes: Lcom/baidu/paysdk/ui/BindCardNoActivity;->jumpSignChannelList()V
    invoke-static {v0}, Lcom/baidu/paysdk/ui/BindCardNoActivity;->access$300(Lcom/baidu/paysdk/ui/BindCardNoActivity;)V

    goto :goto_1d
.end method
