.class Lcom/qbao/core/sms/b$1;
.super Lcom/qbao/core/sms/SmsSendCallback;
.source "SmsUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qbao/core/sms/b;->a(Landroid/content/Context;Ljava/lang/String;SLjava/lang/Object;Lcom/qbao/core/sms/a;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic ar:S

.field private final synthetic as:Ljava/lang/Object;

.field private final synthetic at:Lcom/qbao/core/sms/a;


# direct methods
.method constructor <init>(Landroid/content/Context;SLjava/lang/Object;Lcom/qbao/core/sms/a;)V
    .registers 5

    .prologue
    .line 1
    iput-short p2, p0, Lcom/qbao/core/sms/b$1;->ar:S

    iput-object p3, p0, Lcom/qbao/core/sms/b$1;->as:Ljava/lang/Object;

    iput-object p4, p0, Lcom/qbao/core/sms/b$1;->at:Lcom/qbao/core/sms/a;

    .line 42
    invoke-direct {p0, p1}, Lcom/qbao/core/sms/SmsSendCallback;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public F()V
    .registers 2

    .prologue
    .line 64
    iget-object v0, p0, Lcom/qbao/core/sms/b$1;->at:Lcom/qbao/core/sms/a;

    if-eqz v0, :cond_9

    .line 65
    iget-object v0, p0, Lcom/qbao/core/sms/b$1;->at:Lcom/qbao/core/sms/a;

    invoke-virtual {v0}, Lcom/qbao/core/sms/a;->F()V

    .line 67
    :cond_9
    return-void
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 57
    iget-object v0, p0, Lcom/qbao/core/sms/b$1;->at:Lcom/qbao/core/sms/a;

    if-eqz v0, :cond_9

    .line 58
    iget-object v0, p0, Lcom/qbao/core/sms/b$1;->at:Lcom/qbao/core/sms/a;

    invoke-virtual {v0, p1, p2}, Lcom/qbao/core/sms/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    :cond_9
    return-void
.end method

.method public d(Ljava/lang/String;Ljava/lang/String;)V
    .registers 10

    .prologue
    const/4 v6, 0x1

    .line 45
    invoke-static {}, Lcom/qbao/core/sms/b;->I()I

    move-result v0

    if-nez v0, :cond_2e

    iget-object v0, p0, Lcom/qbao/core/sms/b$1;->af:Landroid/content/Context;

    invoke-static {v0}, Lcom/qbao/core/b/g;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2e

    iget-object v0, p0, Lcom/qbao/core/sms/b$1;->af:Landroid/content/Context;

    invoke-static {v0, v6}, Lcom/qbao/core/b/g;->b(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 46
    invoke-static {}, Lcom/qbao/core/sms/b;->I()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/qbao/core/sms/b;->g(I)V

    .line 47
    iget-object v0, p0, Lcom/qbao/core/sms/b$1;->af:Landroid/content/Context;

    iget-short v2, p0, Lcom/qbao/core/sms/b$1;->ar:S

    iget-object v3, p0, Lcom/qbao/core/sms/b$1;->as:Ljava/lang/Object;

    iget v5, p0, Lcom/qbao/core/sms/b$1;->ah:I

    move-object v1, p1

    move-object v4, p0

    invoke-static/range {v0 .. v6}, Lcom/qbao/core/sms/b;->b(Landroid/content/Context;Ljava/lang/String;SLjava/lang/Object;Lcom/qbao/core/sms/SmsSendCallback;II)V

    .line 53
    :cond_2d
    :goto_2d
    return-void

    .line 49
    :cond_2e
    iget-object v0, p0, Lcom/qbao/core/sms/b$1;->at:Lcom/qbao/core/sms/a;

    if-eqz v0, :cond_2d

    .line 50
    iget-object v0, p0, Lcom/qbao/core/sms/b$1;->at:Lcom/qbao/core/sms/a;

    invoke-virtual {v0, p1, p2}, Lcom/qbao/core/sms/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2d
.end method
