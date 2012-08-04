.class public final Lcom/facebook/katana/PageSearchResultsActivity$UserPagesQueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "PageSearchResultsActivity.java"


# instance fields
.field private synthetic a:Lcom/facebook/katana/PageSearchResultsActivity;


# direct methods
.method public constructor <init>(Lcom/facebook/katana/PageSearchResultsActivity;Landroid/content/Context;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 45
    iput-object p1, p0, Lcom/facebook/katana/PageSearchResultsActivity$UserPagesQueryHandler;->a:Lcom/facebook/katana/PageSearchResultsActivity;

    .line 46
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 47
    return-void
.end method


# virtual methods
.method protected final onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 53
    iget-object v0, p0, Lcom/facebook/katana/PageSearchResultsActivity$UserPagesQueryHandler;->a:Lcom/facebook/katana/PageSearchResultsActivity;

    invoke-virtual {v0}, Lcom/facebook/katana/PageSearchResultsActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 54
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    .line 62
    :goto_0
    return-void

    .line 57
    :cond_0
    iget-object v0, p0, Lcom/facebook/katana/PageSearchResultsActivity$UserPagesQueryHandler;->a:Lcom/facebook/katana/PageSearchResultsActivity;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/facebook/katana/PageSearchResultsActivity;->a(IZ)V

    .line 59
    iget-object v0, p0, Lcom/facebook/katana/PageSearchResultsActivity$UserPagesQueryHandler;->a:Lcom/facebook/katana/PageSearchResultsActivity;

    invoke-virtual {v0, p3}, Lcom/facebook/katana/PageSearchResultsActivity;->startManagingCursor(Landroid/database/Cursor;)V

    .line 61
    iget-object v0, p0, Lcom/facebook/katana/PageSearchResultsActivity$UserPagesQueryHandler;->a:Lcom/facebook/katana/PageSearchResultsActivity;

    invoke-static {v0}, Lcom/facebook/katana/PageSearchResultsActivity;->a(Lcom/facebook/katana/PageSearchResultsActivity;)Lcom/facebook/katana/PageListAdapter;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/facebook/katana/PageListAdapter;->b(Landroid/database/Cursor;)V

    goto :goto_0
.end method
