.class public final Lcom/facebook/katana/ProfileSearchResultsActivity$QueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "ProfileSearchResultsActivity.java"


# instance fields
.field private synthetic a:Lcom/facebook/katana/ProfileSearchResultsActivity;


# direct methods
.method public constructor <init>(Lcom/facebook/katana/ProfileSearchResultsActivity;Landroid/content/Context;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 49
    iput-object p1, p0, Lcom/facebook/katana/ProfileSearchResultsActivity$QueryHandler;->a:Lcom/facebook/katana/ProfileSearchResultsActivity;

    .line 50
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 51
    return-void
.end method


# virtual methods
.method protected final onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 58
    iget-object v0, p0, Lcom/facebook/katana/ProfileSearchResultsActivity$QueryHandler;->a:Lcom/facebook/katana/ProfileSearchResultsActivity;

    invoke-virtual {v0}, Lcom/facebook/katana/ProfileSearchResultsActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    .line 67
    :goto_0
    return-void

    .line 62
    :cond_0
    iget-object v0, p0, Lcom/facebook/katana/ProfileSearchResultsActivity$QueryHandler;->a:Lcom/facebook/katana/ProfileSearchResultsActivity;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/facebook/katana/ProfileSearchResultsActivity;->a(IZ)V

    .line 64
    iget-object v0, p0, Lcom/facebook/katana/ProfileSearchResultsActivity$QueryHandler;->a:Lcom/facebook/katana/ProfileSearchResultsActivity;

    invoke-virtual {v0, p3}, Lcom/facebook/katana/ProfileSearchResultsActivity;->startManagingCursor(Landroid/database/Cursor;)V

    .line 66
    iget-object v0, p0, Lcom/facebook/katana/ProfileSearchResultsActivity$QueryHandler;->a:Lcom/facebook/katana/ProfileSearchResultsActivity;

    iget-object v0, v0, Lcom/facebook/katana/ProfileSearchResultsActivity;->f:Lcom/facebook/katana/ProfileSearchResultsAdapter;

    invoke-virtual {v0, p3}, Lcom/facebook/katana/ProfileSearchResultsAdapter;->a(Landroid/database/Cursor;)V

    goto :goto_0
.end method
