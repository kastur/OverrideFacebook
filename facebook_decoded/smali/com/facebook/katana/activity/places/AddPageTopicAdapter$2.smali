.class Lcom/facebook/katana/activity/places/AddPageTopicAdapter$2;
.super Ljava/lang/Object;
.source "AddPageTopicAdapter.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/facebook/katana/model/PageTopic;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/facebook/katana/activity/places/AddPageTopicAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 252
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Lcom/facebook/katana/model/PageTopic;Lcom/facebook/katana/model/PageTopic;)I
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 256
    iget-object v0, p0, Lcom/facebook/katana/model/PageTopic;->displayName:Ljava/lang/String;

    iget-object v1, p1, Lcom/facebook/katana/model/PageTopic;->displayName:Ljava/lang/String;

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
    .line 252
    check-cast p1, Lcom/facebook/katana/model/PageTopic;

    check-cast p2, Lcom/facebook/katana/model/PageTopic;

    invoke-static {p1, p2}, Lcom/facebook/katana/activity/places/AddPageTopicAdapter$2;->a(Lcom/facebook/katana/model/PageTopic;Lcom/facebook/katana/model/PageTopic;)I

    move-result v0

    return v0
.end method
