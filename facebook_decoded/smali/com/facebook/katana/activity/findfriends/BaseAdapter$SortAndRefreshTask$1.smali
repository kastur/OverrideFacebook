.class Lcom/facebook/katana/activity/findfriends/BaseAdapter$SortAndRefreshTask$1;
.super Ljava/lang/Object;
.source "BaseAdapter.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/facebook/katana/model/FacebookPhonebookContact;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/facebook/katana/activity/findfriends/BaseAdapter$SortAndRefreshTask;)V
    .locals 0
    .parameter

    .prologue
    .line 374
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Lcom/facebook/katana/model/FacebookPhonebookContact;Lcom/facebook/katana/model/FacebookPhonebookContact;)I
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 378
    iget-object v0, p0, Lcom/facebook/katana/model/FacebookPhonebookContact;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lcom/facebook/katana/model/FacebookPhonebookContact;->name:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

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
    .line 374
    check-cast p1, Lcom/facebook/katana/model/FacebookPhonebookContact;

    check-cast p2, Lcom/facebook/katana/model/FacebookPhonebookContact;

    invoke-static {p1, p2}, Lcom/facebook/katana/activity/findfriends/BaseAdapter$SortAndRefreshTask$1;->a(Lcom/facebook/katana/model/FacebookPhonebookContact;Lcom/facebook/katana/model/FacebookPhonebookContact;)I

    move-result v0

    return v0
.end method
