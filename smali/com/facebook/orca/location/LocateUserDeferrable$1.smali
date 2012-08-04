.class Lcom/facebook/orca/location/LocateUserDeferrable$1;
.super Ljava/lang/Object;
.source "LocateUserDeferrable.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/facebook/orca/location/LocateUserDeferrable;


# direct methods
.method constructor <init>(Lcom/facebook/orca/location/LocateUserDeferrable;)V
    .locals 0
    .parameter

    .prologue
    .line 67
    iput-object p1, p0, Lcom/facebook/orca/location/LocateUserDeferrable$1;->a:Lcom/facebook/orca/location/LocateUserDeferrable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/facebook/orca/location/LocateUserDeferrable$1;->a:Lcom/facebook/orca/location/LocateUserDeferrable;

    invoke-static {v0}, Lcom/facebook/orca/location/LocateUserDeferrable;->a(Lcom/facebook/orca/location/LocateUserDeferrable;)V

    .line 71
    return-void
.end method
