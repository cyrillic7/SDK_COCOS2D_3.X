.class final Lcom/unionpay/mobile/android/pro/views/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/unionpay/mobile/android/pro/pboc/engine/a;


# instance fields
.field final synthetic a:Lcom/unionpay/mobile/android/pro/views/a;


# direct methods
.method constructor <init>(Lcom/unionpay/mobile/android/pro/views/a;)V
    .registers 2

    iput-object p1, p0, Lcom/unionpay/mobile/android/pro/views/b;->a:Lcom/unionpay/mobile/android/pro/views/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/ArrayList;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/unionpay/mobile/android/model/c;",
            ">;)V"
        }
    .end annotation

    const-string v0, "uppay"

    const-string v1, "deviceReady +++"

    invoke-static {v0, v1}, Lcom/unionpay/mobile/android/utils/h;->a(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_29

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_29

    iget-object v0, p0, Lcom/unionpay/mobile/android/pro/views/b;->a:Lcom/unionpay/mobile/android/pro/views/a;

    iget-object v0, v0, Lcom/unionpay/mobile/android/pro/views/a;->q:Ljava/util/List;

    if-nez v0, :cond_22

    iget-object v0, p0, Lcom/unionpay/mobile/android/pro/views/b;->a:Lcom/unionpay/mobile/android/pro/views/a;

    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, v0, Lcom/unionpay/mobile/android/pro/views/a;->q:Ljava/util/List;

    :cond_22
    iget-object v0, p0, Lcom/unionpay/mobile/android/pro/views/b;->a:Lcom/unionpay/mobile/android/pro/views/a;

    iget-object v0, v0, Lcom/unionpay/mobile/android/pro/views/a;->q:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_29
    iget-object v0, p0, Lcom/unionpay/mobile/android/pro/views/b;->a:Lcom/unionpay/mobile/android/pro/views/a;

    invoke-static {v0}, Lcom/unionpay/mobile/android/pro/views/a;->a(Lcom/unionpay/mobile/android/pro/views/a;)V

    const-string v0, "uppay"

    const-string v1, "deviceReady ---"

    invoke-static {v0, v1}, Lcom/unionpay/mobile/android/utils/h;->a(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
