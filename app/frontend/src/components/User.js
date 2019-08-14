import React, { Component } from 'react';
import { Query } from 'react-apollo';
import gql from 'graphql-tag';
import UserAvatar from './UserAvatar';

import Books from './Books';

const USER_QUERY = gql`
  query($id: ID!) {
    user(id: $id) {
      id
      name
      email
      books {
        title
        author
        coverImgUrl
        rating
      }
    }
  }
`;

const User = ({ user, selectUser }) => (
  <Query query={USER_QUERY} variables={{ id: user.id }}>
    {({ loading, error, data }) => {
      if (loading) return <div>Fetching..</div>;
      if (error) return <div>Error!</div>;

      return (
        <>
          <div className="flex my-4">
            <button
              className="bg-grey-light hover:bg-grey text-grey-darkest font-bold py-2 px-4 rounded"
              onClick={selectUser.bind(this, null)}
            >
              Back
            </button>
          </div>
          <div className="flex mb-4">
            <div className="my-4 w-1/4 rounded overflow-hidden">
              <UserAvatar user={user} />
            </div>
            <div className="my-4 px-4 w-3/4">
              <Books books={data.user.books} />
            </div>
          </div>
        </>
      );
    }}
  </Query>
);
export default User;
