.class Lcom/baidu/paysdk/ui/PwdPayActivity$BankCardItemManager$ViewIdxSeledTag;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/paysdk/ui/PwdPayActivity$BankCardItemManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewIdxSeledTag"
.end annotation


# instance fields
.field idx:I

.field selected:Z

.field final synthetic this$0:Lcom/baidu/paysdk/ui/PwdPayActivity$BankCardItemManager;


# direct methods
.method public constructor <init>(Lcom/baidu/paysdk/ui/PwdPayActivity$BankCardItemManager;IZ)V
    .registers 4

    iput-object p1, p0, Lcom/baidu/paysdk/ui/PwdPayActivity$BankCardItemManager$ViewIdxSeledTag;->this$0:Lcom/baidu/paysdk/ui/PwdPayActivity$BankCardItemManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/baidu/paysdk/ui/PwdPayActivity$BankCardItemManager$ViewIdxSeledTag;->idx:I

    iput-boolean p3, p0, Lcom/baidu/paysdk/ui/PwdPayActivity$BankCardItemManager$ViewIdxSeledTag;->selected:Z

    return-void
.end method
