.class Lcom/facebook/orca/threadview/ThreadViewMapActivityTabImpl$MemberOverlayItem;
.super Lcom/google/android/maps/OverlayItem;
.source "ThreadViewMapActivityTabImpl.java"


# instance fields
.field private final a:Lcom/facebook/orca/users/UserKey;

.field private final b:F

.field private final c:Lcom/facebook/orca/threads/Message;


# direct methods
.method public constructor <init>(Lcom/facebook/orca/threadview/ThreadViewMapActivityTabImpl;Lcom/google/android/maps/GeoPoint;FLjava/lang/String;Ljava/lang/String;Lcom/facebook/orca/users/UserKey;Lcom/facebook/orca/threads/Message;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 287
    invoke-direct {p0, p2, p4, p5}, Lcom/google/android/maps/OverlayItem;-><init>(Lcom/google/android/maps/GeoPoint;Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    iput-object p6, p0, Lcom/facebook/orca/threadview/ThreadViewMapActivityTabImpl$MemberOverlayItem;->a:Lcom/facebook/orca/users/UserKey;

    .line 290
    iput p3, p0, Lcom/facebook/orca/threadview/ThreadViewMapActivityTabImpl$MemberOverlayItem;->b:F

    .line 291
    iput-object p7, p0, Lcom/facebook/orca/threadview/ThreadViewMapActivityTabImpl$MemberOverlayItem;->c:Lcom/facebook/orca/threads/Message;

    .line 292
    return-void
.end method


# virtual methods
.method public final a()Lcom/facebook/orca/users/UserKey;
    .locals 1

    .prologue
    .line 295
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMapActivityTabImpl$MemberOverlayItem;->a:Lcom/facebook/orca/users/UserKey;

    return-object v0
.end method

.method public final b()Lcom/facebook/orca/threads/Message;
    .locals 1

    .prologue
    .line 299
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewMapActivityTabImpl$MemberOverlayItem;->c:Lcom/facebook/orca/threads/Message;

    return-object v0
.end method

.method public final c()F
    .locals 1

    .prologue
    .line 303
    iget v0, p0, Lcom/facebook/orca/threadview/ThreadViewMapActivityTabImpl$MemberOverlayItem;->b:F

    return v0
.end method
