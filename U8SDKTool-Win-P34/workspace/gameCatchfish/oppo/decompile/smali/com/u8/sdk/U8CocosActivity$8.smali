.class Lcom/u8/sdk/U8CocosActivity$8;
.super Ljava/lang/Object;
.source "U8CocosActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/u8/sdk/U8CocosActivity;->pay(Lorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/u8/sdk/U8CocosActivity;

.field private final synthetic val$params:Lcom/u8/sdk/PayParams;


# direct methods
.method constructor <init>(Lcom/u8/sdk/U8CocosActivity;Lcom/u8/sdk/PayParams;)V
    .locals 0

    iput-object p1, p0, Lcom/u8/sdk/U8CocosActivity$8;->this$0:Lcom/u8/sdk/U8CocosActivity;

    iput-object p2, p0, Lcom/u8/sdk/U8CocosActivity$8;->val$params:Lcom/u8/sdk/PayParams;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    invoke-static {}, Lcom/u8/sdk/plugin/U8Pay;->getInstance()Lcom/u8/sdk/plugin/U8Pay;

    move-result-object v0

    iget-object v1, p0, Lcom/u8/sdk/U8CocosActivity$8;->val$params:Lcom/u8/sdk/PayParams;

    invoke-virtual {v0, v1}, Lcom/u8/sdk/plugin/U8Pay;->pay(Lcom/u8/sdk/PayParams;)V

    return-void
.end method
