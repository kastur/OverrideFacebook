.class Lcom/facebook/orca/location/LocationServiceHandler$1;
.super Ljava/lang/Object;
.source "LocationServiceHandler.java"

# interfaces
.implements Lcom/facebook/orca/common/async/Deferrable;


# direct methods
.method constructor <init>(Lcom/facebook/orca/location/LocationServiceHandler;)V
    .locals 0
    .parameter

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 50
    check-cast p1, Landroid/location/Location;

    invoke-static {p1}, Lcom/facebook/orca/server/OperationResult;->a(Landroid/os/Parcelable;)Lcom/facebook/orca/server/OperationResult;

    move-result-object v0

    return-object v0
.end method
