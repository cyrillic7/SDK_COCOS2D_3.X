.class Lcom/baidu/paysdk/ui/SelectBindCardActivity$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic this$0:Lcom/baidu/paysdk/ui/SelectBindCardActivity;


# direct methods
.method constructor <init>(Lcom/baidu/paysdk/ui/SelectBindCardActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/baidu/paysdk/ui/SelectBindCardActivity$1;->this$0:Lcom/baidu/paysdk/ui/SelectBindCardActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 8

    iget-object v0, p0, Lcom/baidu/paysdk/ui/SelectBindCardActivity$1;->this$0:Lcom/baidu/paysdk/ui/SelectBindCardActivity;

    # setter for: Lcom/baidu/paysdk/ui/SelectBindCardActivity;->mSelect:I
    invoke-static {v0, p3}, Lcom/baidu/paysdk/ui/SelectBindCardActivity;->access$102(Lcom/baidu/paysdk/ui/SelectBindCardActivity;I)I

    iget-object v0, p0, Lcom/baidu/paysdk/ui/SelectBindCardActivity$1;->this$0:Lcom/baidu/paysdk/ui/SelectBindCardActivity;

    # getter for: Lcom/baidu/paysdk/ui/SelectBindCardActivity;->mAdapter:Lcom/baidu/paysdk/ui/SelectBindCardActivity$ListViewAdapter;
    invoke-static {v0}, Lcom/baidu/paysdk/ui/SelectBindCardActivity;->access$200(Lcom/baidu/paysdk/ui/SelectBindCardActivity;)Lcom/baidu/paysdk/ui/SelectBindCardActivity$ListViewAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/paysdk/ui/SelectBindCardActivity$ListViewAdapter;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/baidu/paysdk/ui/SelectBindCardActivity$1;->this$0:Lcom/baidu/paysdk/ui/SelectBindCardActivity;

    iget-object v1, p0, Lcom/baidu/paysdk/ui/SelectBindCardActivity$1;->this$0:Lcom/baidu/paysdk/ui/SelectBindCardActivity;

    # getter for: Lcom/baidu/paysdk/ui/SelectBindCardActivity;->mSelect:I
    invoke-static {v1}, Lcom/baidu/paysdk/ui/SelectBindCardActivity;->access$100(Lcom/baidu/paysdk/ui/SelectBindCardActivity;)I

    move-result v1

    # invokes: Lcom/baidu/paysdk/ui/SelectBindCardActivity;->doNext(I)V
    invoke-static {v0, v1}, Lcom/baidu/paysdk/ui/SelectBindCardActivity;->access$300(Lcom/baidu/paysdk/ui/SelectBindCardActivity;I)V

    return-void
.end method
