.class Lcom/baidu/frontia/module/deeplink/f$a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/frontia/module/deeplink/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/baidu/frontia/module/deeplink/f$b;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/frontia/module/deeplink/f;


# direct methods
.method private constructor <init>(Lcom/baidu/frontia/module/deeplink/f;)V
    .registers 2

    iput-object p1, p0, Lcom/baidu/frontia/module/deeplink/f$a;->a:Lcom/baidu/frontia/module/deeplink/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/baidu/frontia/module/deeplink/f;Lcom/baidu/frontia/module/deeplink/f$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/baidu/frontia/module/deeplink/f$a;-><init>(Lcom/baidu/frontia/module/deeplink/f;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/baidu/frontia/module/deeplink/f$b;Lcom/baidu/frontia/module/deeplink/f$b;)I
    .registers 5

    iget v0, p2, Lcom/baidu/frontia/module/deeplink/f$b;->a:I

    iget v1, p1, Lcom/baidu/frontia/module/deeplink/f$b;->a:I

    sub-int/2addr v0, v1

    if-nez v0, :cond_c

    iget v0, p2, Lcom/baidu/frontia/module/deeplink/f$b;->b:I

    iget v1, p1, Lcom/baidu/frontia/module/deeplink/f$b;->b:I

    sub-int/2addr v0, v1

    :cond_c
    return v0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4

    check-cast p1, Lcom/baidu/frontia/module/deeplink/f$b;

    check-cast p2, Lcom/baidu/frontia/module/deeplink/f$b;

    invoke-virtual {p0, p1, p2}, Lcom/baidu/frontia/module/deeplink/f$a;->a(Lcom/baidu/frontia/module/deeplink/f$b;Lcom/baidu/frontia/module/deeplink/f$b;)I

    move-result v0

    return v0
.end method
