.class Lcom/facebook/orca/threadview/ThreadViewMapActivityTabImpl$1;
.super Ljava/lang/Object;
.source "ThreadViewMapActivityTabImpl.java"

# interfaces
.implements Lcom/google/android/maps/ItemizedOverlay$OnFocusChangeListener;


# instance fields
.field private synthetic a:Lcom/facebook/orca/threadview/ThreadViewMapActivityTabImpl;


# direct methods
.method constructor <init>(Lcom/facebook/orca/threadview/ThreadViewMapActivityTabImpl;)V
    .locals 0
    .parameter

    .prologue
    .line 103
    iput-object p1, p0, Lcom/facebook/orca/threadview/ThreadViewMapActivityTabImpl$1;->a:Lcom/facebook/orca/threadview/ThreadViewMapActivityTabImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChanged(Lcom/google/android/maps/ItemizedOverlay;Lcom/google/android/maps/OverlayItem;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 106
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMapActivityTabImpl$1;->a:Lcom/facebook/orca/threadview/ThreadViewMapActivityTabImpl;

    invoke-static {v0, p2}, Lcom/facebook/orca/threadview/ThreadViewMapActivityTabImpl;->a(Lcom/facebook/orca/threadview/ThreadViewMapActivityTabImpl;Lcom/google/android/maps/OverlayItem;)V

    .line 107
    return-void
.end method
