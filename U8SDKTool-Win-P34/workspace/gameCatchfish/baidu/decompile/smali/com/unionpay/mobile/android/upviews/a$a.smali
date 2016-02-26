.class public final Lcom/unionpay/mobile/android/upviews/a$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unionpay/mobile/android/upviews/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public a:I

.field public b:Ljava/lang/String;

.field final synthetic c:Lcom/unionpay/mobile/android/upviews/a;


# direct methods
.method constructor <init>(Lcom/unionpay/mobile/android/upviews/a;Ljava/lang/String;)V
    .registers 4

    iput-object p1, p0, Lcom/unionpay/mobile/android/upviews/a$a;->c:Lcom/unionpay/mobile/android/upviews/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/unionpay/mobile/android/upviews/a$a;->a:I

    iput-object p2, p0, Lcom/unionpay/mobile/android/upviews/a$a;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(ILjava/lang/String;)V
    .registers 3

    iput-object p2, p0, Lcom/unionpay/mobile/android/upviews/a$a;->b:Ljava/lang/String;

    iput p1, p0, Lcom/unionpay/mobile/android/upviews/a$a;->a:I

    return-void
.end method

.method public final a()Z
    .registers 2

    iget v0, p0, Lcom/unionpay/mobile/android/upviews/a$a;->a:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method
