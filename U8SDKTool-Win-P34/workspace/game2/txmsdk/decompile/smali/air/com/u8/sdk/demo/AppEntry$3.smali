.class Lair/com/u8/sdk/demo/AppEntry$3;
.super Ljava/lang/Object;
.source "AppEntry.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lair/com/u8/sdk/demo/AppEntry;->launchAIRService()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lair/com/u8/sdk/demo/AppEntry;


# direct methods
.method constructor <init>(Lair/com/u8/sdk/demo/AppEntry;)V
    .locals 0

    iput-object p1, p0, Lair/com/u8/sdk/demo/AppEntry$3;->this$0:Lair/com/u8/sdk/demo/AppEntry;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    iget-object v0, p0, Lair/com/u8/sdk/demo/AppEntry$3;->this$0:Lair/com/u8/sdk/demo/AppEntry;

    invoke-virtual {v0, p0}, Lair/com/u8/sdk/demo/AppEntry;->unbindService(Landroid/content/ServiceConnection;)V

    iget-object v0, p0, Lair/com/u8/sdk/demo/AppEntry$3;->this$0:Lair/com/u8/sdk/demo/AppEntry;

    # invokes: Lair/com/u8/sdk/demo/AppEntry;->loadSharedRuntimeDex()V
    invoke-static {v0}, Lair/com/u8/sdk/demo/AppEntry;->access$300(Lair/com/u8/sdk/demo/AppEntry;)V

    iget-object v0, p0, Lair/com/u8/sdk/demo/AppEntry$3;->this$0:Lair/com/u8/sdk/demo/AppEntry;

    const/4 v1, 0x0

    # invokes: Lair/com/u8/sdk/demo/AppEntry;->createActivityWrapper(Z)V
    invoke-static {v0, v1}, Lair/com/u8/sdk/demo/AppEntry;->access$400(Lair/com/u8/sdk/demo/AppEntry;Z)V

    # getter for: Lair/com/u8/sdk/demo/AppEntry;->sRuntimeClassesLoaded:Z
    invoke-static {}, Lair/com/u8/sdk/demo/AppEntry;->access$500()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lair/com/u8/sdk/demo/AppEntry$3;->this$0:Lair/com/u8/sdk/demo/AppEntry;

    # invokes: Lair/com/u8/sdk/demo/AppEntry;->InvokeWrapperOnCreate()V
    invoke-static {v0}, Lair/com/u8/sdk/demo/AppEntry;->access$600(Lair/com/u8/sdk/demo/AppEntry;)V

    :goto_0
    return-void

    :cond_0
    # invokes: Lair/com/u8/sdk/demo/AppEntry;->KillSelf()V
    invoke-static {}, Lair/com/u8/sdk/demo/AppEntry;->access$700()V

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    return-void
.end method
