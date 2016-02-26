.class Lcom/baidu/paysdk/ui/PwdPayActivity$ViewEnabledSeledTag;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/paysdk/ui/PwdPayActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ViewEnabledSeledTag"
.end annotation


# instance fields
.field enabled:Z

.field selected:Z


# direct methods
.method public constructor <init>(ZZ)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/baidu/paysdk/ui/PwdPayActivity$ViewEnabledSeledTag;->enabled:Z

    iput-boolean p2, p0, Lcom/baidu/paysdk/ui/PwdPayActivity$ViewEnabledSeledTag;->selected:Z

    return-void
.end method
