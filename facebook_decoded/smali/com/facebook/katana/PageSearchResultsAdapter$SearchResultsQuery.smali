.class public interface abstract Lcom/facebook/katana/PageSearchResultsAdapter$SearchResultsQuery;
.super Ljava/lang/Object;
.source "PageSearchResultsAdapter.java"


# static fields
.field public static final a:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 25
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "page_id"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "display_name"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "pic"

    aput-object v2, v0, v1

    sput-object v0, Lcom/facebook/katana/PageSearchResultsAdapter$SearchResultsQuery;->a:[Ljava/lang/String;

    return-void
.end method
