.class Lcom/baidu/paysdk/ui/OrderHomeActivity$ViewTag;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/paysdk/ui/OrderHomeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ViewTag"
.end annotation


# instance fields
.field enabled:Z

.field idx:I

.field selected:Z

.field type:I


# direct methods
.method public constructor <init>(IIZZ)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/baidu/paysdk/ui/OrderHomeActivity$ViewTag;->type:I

    iput p2, p0, Lcom/baidu/paysdk/ui/OrderHomeActivity$ViewTag;->idx:I

    iput-boolean p3, p0, Lcom/baidu/paysdk/ui/OrderHomeActivity$ViewTag;->enabled:Z

    iput-boolean p4, p0, Lcom/baidu/paysdk/ui/OrderHomeActivity$ViewTag;->selected:Z

    return-void
.end method
