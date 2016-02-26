.class Lcom/baidu/paysdk/ui/BindBaseActivity$6;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field final synthetic this$0:Lcom/baidu/paysdk/ui/BindBaseActivity;


# direct methods
.method constructor <init>(Lcom/baidu/paysdk/ui/BindBaseActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/baidu/paysdk/ui/BindBaseActivity$6;->this$0:Lcom/baidu/paysdk/ui/BindBaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .registers 4

    iget-object v0, p0, Lcom/baidu/paysdk/ui/BindBaseActivity$6;->this$0:Lcom/baidu/paysdk/ui/BindBaseActivity;

    invoke-virtual {v0}, Lcom/baidu/paysdk/ui/BindBaseActivity;->checkFields()V

    return-void
.end method
