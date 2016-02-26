.class Lcom/xiaomi/gamecenter/sdk/y;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Lcom/xiaomi/gamecenter/sdk/x;


# direct methods
.method constructor <init>(Lcom/xiaomi/gamecenter/sdk/x;)V
    .registers 2

    iput-object p1, p0, Lcom/xiaomi/gamecenter/sdk/y;->a:Lcom/xiaomi/gamecenter/sdk/x;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/xiaomi/gamecenter/sdk/y;->a:Lcom/xiaomi/gamecenter/sdk/x;

    iget-object v0, v0, Lcom/xiaomi/gamecenter/sdk/x;->a:Lcom/xiaomi/gamecenter/sdk/MiCommplatform;

    iget-object v1, p0, Lcom/xiaomi/gamecenter/sdk/y;->a:Lcom/xiaomi/gamecenter/sdk/x;

    iget-object v1, v1, Lcom/xiaomi/gamecenter/sdk/x;->a:Lcom/xiaomi/gamecenter/sdk/MiCommplatform;

    # getter for: Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->appInfo:Lcom/xiaomi/gamecenter/sdk/entry/MiAppInfo;
    invoke-static {v1}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->access$100(Lcom/xiaomi/gamecenter/sdk/MiCommplatform;)Lcom/xiaomi/gamecenter/sdk/entry/MiAppInfo;

    move-result-object v1

    # invokes: Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->openApp(Lcom/xiaomi/gamecenter/sdk/entry/MiAppInfo;)V
    invoke-static {v0, v1}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->access$800(Lcom/xiaomi/gamecenter/sdk/MiCommplatform;Lcom/xiaomi/gamecenter/sdk/entry/MiAppInfo;)V

    return-void
.end method
