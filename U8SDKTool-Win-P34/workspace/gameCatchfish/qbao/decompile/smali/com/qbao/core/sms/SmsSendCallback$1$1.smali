.class Lcom/qbao/core/sms/SmsSendCallback$1$1;
.super Ljava/lang/Object;
.source "SmsSendCallback.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qbao/core/sms/SmsSendCallback$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic am:Lcom/qbao/core/sms/SmsSendCallback$1;


# direct methods
.method constructor <init>(Lcom/qbao/core/sms/SmsSendCallback$1;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/qbao/core/sms/SmsSendCallback$1$1;->am:Lcom/qbao/core/sms/SmsSendCallback$1;

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 97
    iget-object v0, p0, Lcom/qbao/core/sms/SmsSendCallback$1$1;->am:Lcom/qbao/core/sms/SmsSendCallback$1;

    invoke-static {v0}, Lcom/qbao/core/sms/SmsSendCallback$1;->a(Lcom/qbao/core/sms/SmsSendCallback$1;)Lcom/qbao/core/sms/SmsSendCallback;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qbao/core/sms/SmsSendCallback;->F()V

    .line 98
    return-void
.end method
