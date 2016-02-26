.class Lcom/u8/sdk/OPPOSDK$5;
.super Ljava/lang/Object;
.source "OPPOSDK.java"

# interfaces
.implements Lcom/nearme/game/sdk/callback/ApiCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/u8/sdk/OPPOSDK;->pay(Lcom/u8/sdk/PayParams;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/u8/sdk/OPPOSDK;


# direct methods
.method constructor <init>(Lcom/u8/sdk/OPPOSDK;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/u8/sdk/OPPOSDK$5;->this$0:Lcom/u8/sdk/OPPOSDK;

    .line 176
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/String;I)V
    .registers 3
    .param p1, "resultMsg"    # Ljava/lang/String;
    .param p2, "resultCode"    # I

    .prologue
    .line 191
    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .registers 2
    .param p1, "resultMsg"    # Ljava/lang/String;

    .prologue
    .line 181
    return-void
.end method
