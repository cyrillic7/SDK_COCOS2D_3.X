.class Lcom/baidu/paysdk/ui/SignChannelListActivity$GuidePageChangeListener;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/paysdk/ui/SignChannelListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GuidePageChangeListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/paysdk/ui/SignChannelListActivity;


# direct methods
.method private constructor <init>(Lcom/baidu/paysdk/ui/SignChannelListActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/baidu/paysdk/ui/SignChannelListActivity$GuidePageChangeListener;->this$0:Lcom/baidu/paysdk/ui/SignChannelListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/baidu/paysdk/ui/SignChannelListActivity;Lcom/baidu/paysdk/ui/SignChannelListActivity$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/baidu/paysdk/ui/SignChannelListActivity$GuidePageChangeListener;-><init>(Lcom/baidu/paysdk/ui/SignChannelListActivity;)V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .registers 2

    return-void
.end method

.method public onPageScrolled(IFI)V
    .registers 4

    return-void
.end method

.method public onPageSelected(I)V
    .registers 4

    packed-switch p1, :pswitch_data_12

    :goto_3
    return-void

    :pswitch_4
    iget-object v0, p0, Lcom/baidu/paysdk/ui/SignChannelListActivity$GuidePageChangeListener;->this$0:Lcom/baidu/paysdk/ui/SignChannelListActivity;

    const/4 v1, 0x1

    # invokes: Lcom/baidu/paysdk/ui/SignChannelListActivity;->refreshUi(Z)V
    invoke-static {v0, v1}, Lcom/baidu/paysdk/ui/SignChannelListActivity;->access$1300(Lcom/baidu/paysdk/ui/SignChannelListActivity;Z)V

    goto :goto_3

    :pswitch_b
    iget-object v0, p0, Lcom/baidu/paysdk/ui/SignChannelListActivity$GuidePageChangeListener;->this$0:Lcom/baidu/paysdk/ui/SignChannelListActivity;

    const/4 v1, 0x0

    # invokes: Lcom/baidu/paysdk/ui/SignChannelListActivity;->refreshUi(Z)V
    invoke-static {v0, v1}, Lcom/baidu/paysdk/ui/SignChannelListActivity;->access$1300(Lcom/baidu/paysdk/ui/SignChannelListActivity;Z)V

    goto :goto_3

    :pswitch_data_12
    .packed-switch 0x0
        :pswitch_4
        :pswitch_b
    .end packed-switch
.end method
