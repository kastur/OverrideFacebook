.class public Lcom/facebook/orca/location/LocationServiceHandler;
.super Ljava/lang/Object;
.source "LocationServiceHandler.java"

# interfaces
.implements Lcom/facebook/orca/server/OrcaServiceHandler;


# instance fields
.field private final a:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/facebook/orca/location/LocateUserDeferrable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/facebook/orca/location/LocateUserDeferrable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/facebook/orca/location/LocationServiceHandler;->a:Ljavax/inject/Provider;

    .line 27
    return-void
.end method

.method private b(Lcom/facebook/orca/server/OperationParams;)Lcom/facebook/orca/server/OperationResult;
    .locals 4
    .parameter

    .prologue
    .line 41
    invoke-virtual {p1}, Lcom/facebook/orca/server/OperationParams;->b()Landroid/os/Bundle;

    move-result-object v0

    .line 42
    const-string v1, "getDeviceLocationParams"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/server/GetDeviceLocationParams;

    .line 43
    new-instance v2, Lcom/facebook/orca/common/async/Deferred;

    invoke-direct {v2}, Lcom/facebook/orca/common/async/Deferred;-><init>()V

    .line 44
    iget-object v1, p0, Lcom/facebook/orca/location/LocationServiceHandler;->a:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/orca/location/LocateUserDeferrable;

    .line 45
    invoke-virtual {p1}, Lcom/facebook/orca/server/OperationParams;->c()Lcom/facebook/orca/server/OrcaServiceProgressCallback;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/facebook/orca/location/LocateUserDeferrable;->a(Lcom/facebook/orca/server/OrcaServiceProgressCallback;)V

    .line 46
    invoke-virtual {v2, v1}, Lcom/facebook/orca/common/async/Deferred;->a(Lcom/facebook/orca/common/async/Deferrable;)Lcom/facebook/orca/common/async/Deferred;

    .line 47
    new-instance v1, Lcom/facebook/orca/location/LocationServiceHandler$1;

    invoke-direct {v1, p0}, Lcom/facebook/orca/location/LocationServiceHandler$1;-><init>(Lcom/facebook/orca/location/LocationServiceHandler;)V

    invoke-virtual {v2, v1}, Lcom/facebook/orca/common/async/Deferred;->a(Lcom/facebook/orca/common/async/Deferrable;)Lcom/facebook/orca/common/async/Deferred;

    .line 53
    invoke-virtual {v2, v0}, Lcom/facebook/orca/common/async/Deferred;->a(Ljava/lang/Object;)V

    .line 54
    new-instance v0, Lcom/facebook/orca/server/DeferredOperationResult;

    invoke-direct {v0, v2}, Lcom/facebook/orca/server/DeferredOperationResult;-><init>(Lcom/facebook/orca/common/async/Deferred;)V

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/facebook/orca/server/OperationParams;)Lcom/facebook/orca/server/OperationResult;
    .locals 4
    .parameter

    .prologue
    .line 31
    invoke-virtual {p1}, Lcom/facebook/orca/server/OperationParams;->a()Ljava/lang/String;

    move-result-object v0

    .line 32
    invoke-virtual {p1}, Lcom/facebook/orca/server/OperationParams;->b()Landroid/os/Bundle;

    .line 33
    const-string v1, "get_device_location"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 34
    invoke-direct {p0, p1}, Lcom/facebook/orca/location/LocationServiceHandler;->b(Lcom/facebook/orca/server/OperationParams;)Lcom/facebook/orca/server/OperationResult;

    move-result-object v0

    return-object v0

    .line 36
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unknown operation type: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
