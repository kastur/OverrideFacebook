.class Lcom/facebook/katana/activity/profilelist/ProfileListDynamicAdapter$SortProfilesTask$1;
.super Ljava/lang/Object;
.source "ProfileListDynamicAdapter.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/facebook/katana/model/FacebookProfile;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/facebook/katana/activity/profilelist/ProfileListDynamicAdapter$SortProfilesTask;)V
    .locals 0
    .parameter

    .prologue
    .line 240
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Lcom/facebook/katana/model/FacebookProfile;Lcom/facebook/katana/model/FacebookProfile;)I
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 244
    iget-object v0, p0, Lcom/facebook/katana/model/FacebookProfile;->mDisplayName:Ljava/lang/String;

    iget-object v1, p1, Lcom/facebook/katana/model/FacebookProfile;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method


# virtual methods
.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 240
    check-cast p1, Lcom/facebook/katana/model/FacebookProfile;

    check-cast p2, Lcom/facebook/katana/model/FacebookProfile;

    invoke-static {p1, p2}, Lcom/facebook/katana/activity/profilelist/ProfileListDynamicAdapter$SortProfilesTask$1;->a(Lcom/facebook/katana/model/FacebookProfile;Lcom/facebook/katana/model/FacebookProfile;)I

    move-result v0

    return v0
.end method
